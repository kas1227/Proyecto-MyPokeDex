package com.mypokedex.api.login.config;

import com.mypokedex.api.login.security.JwtFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.HttpStatusEntryPoint;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import java.util.List;

/**
 * Configuración de seguridad.
 *
 * Spring Security se configura con "lambdas" (las flechas ->). Cada lambda
 * recibe un objeto de configuración y llama a sus métodos. Por ejemplo,
 *     csrf -> csrf.disable()
 * significa "coge la configuración de CSRF y desactívala".
 */
@Configuration
public class SecurityConfig {

    private final JwtFilter jwtFilter;

    public SecurityConfig(JwtFilter jwtFilter) {
        this.jwtFilter = jwtFilter;
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            // Activa CORS con la configuración de corsConfigurationSource() (más abajo)
            .cors(Customizer.withDefaults())

            // CSRF protege formularios con sesión. Con JWT no hay sesión, así que no hace falta
            .csrf(csrf -> csrf.disable())

            // No guardamos sesión en el servidor: cada petición se identifica con su token
            .sessionManagement(sesion -> sesion.sessionCreationPolicy(SessionCreationPolicy.STATELESS))

            // Qué rutas son públicas y cuáles necesitan estar autenticado
            .authorizeHttpRequests(rutas -> rutas
                .requestMatchers("/api/auth/**").permitAll()   // login: público
                .anyRequest().authenticated()                  // el resto: con token
            )

            // Si alguien sin token pide una ruta protegida, respondemos 401 (no autorizado)
            .exceptionHandling(errores -> errores
                .authenticationEntryPoint(new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED))
            )

            // Nuestro filtro JWT se ejecuta antes que el filtro de login de Spring
            .addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class);

        return http.build();
    }

    /** Cifra las contraseñas con BCrypt */
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    /**
     * El AuthenticationManager comprueba usuario y contraseña.
     * Spring lo crea solo usando nuestro UsuarioDetailsService y el PasswordEncoder.
     */
    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration configuracion) throws Exception {
        return configuracion.getAuthenticationManager();
    }

    /** Permite que Angular (http://localhost:4200) llame a esta API */
    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration cors = new CorsConfiguration();
        cors.setAllowedOrigins(List.of("http://localhost:4200"));
        cors.setAllowedMethods(List.of("GET", "POST", "PUT", "DELETE", "OPTIONS"));
        cors.setAllowedHeaders(List.of("Authorization", "Content-Type"));

        UrlBasedCorsConfigurationSource fuente = new UrlBasedCorsConfigurationSource();
        fuente.registerCorsConfiguration("/**", cors);
        return fuente;
    }
}
