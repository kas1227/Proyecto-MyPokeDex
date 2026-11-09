package com.mypokedex.api.login.security;

import com.mypokedex.api.login.service.JwtService;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;

/**
 * Se ejecuta en CADA petición, antes de llegar al controlador.
 *
 * Si la petición trae la cabecera "Authorization: Bearer <token>" y el token es válido,
 * marca al usuario como autenticado. Si no trae token o no es válido, deja pasar
 * la petición sin usuario: Spring Security la rechazará con un 401 si la ruta está protegida.
 */
@Component
public class JwtFilter extends OncePerRequestFilter {

    private final JwtService jwtService;
    private final UsuarioDetailsService usuarioDetailsService;

    public JwtFilter(JwtService jwtService, UsuarioDetailsService usuarioDetailsService) {
        this.jwtService = jwtService;
        this.usuarioDetailsService = usuarioDetailsService;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request,
                                    HttpServletResponse response,
                                    FilterChain filterChain) throws ServletException, IOException {

        String cabecera = request.getHeader("Authorization");

        // 1. Si no hay cabecera o no empieza por "Bearer ", seguimos sin hacer nada
        if (cabecera == null || !cabecera.startsWith("Bearer ")) {
            filterChain.doFilter(request, response);
            return;
        }

        // 2. Quitamos "Bearer " (7 caracteres) para quedarnos solo con el token
        String token = cabecera.substring(7);

        try {
            // 3. Comprobamos el token y obtenemos el usuario
            String username = jwtService.extraerUsername(token);
            UserDetails usuario = usuarioDetailsService.loadUserByUsername(username);

            // 4. Le decimos a Spring Security que este usuario está autenticado
            UsernamePasswordAuthenticationToken autenticacion =
                    new UsernamePasswordAuthenticationToken(usuario, null, usuario.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(autenticacion);
        } catch (Exception e) {
            // Token falso, modificado o caducado: no autenticamos a nadie
            SecurityContextHolder.clearContext();
        }

        // 5. Continuamos con la petición
        filterChain.doFilter(request, response);
    }
}
