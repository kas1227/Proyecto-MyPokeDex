package com.mypokedex.api.login.config;

import com.mypokedex.api.login.model.Usuario;
import com.mypokedex.api.login.repository.UsuarioRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

/**
 * Se ejecuta una vez al arrancar la aplicación y crea dos usuarios de prueba.
 * Las contraseñas se guardan cifradas con BCrypt.
 */
@Component
public class DatosIniciales implements CommandLineRunner {

    private final UsuarioRepository usuarioRepository;
    private final PasswordEncoder passwordEncoder;

    public DatosIniciales(UsuarioRepository usuarioRepository, PasswordEncoder passwordEncoder) {
        this.usuarioRepository = usuarioRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public void run(String... args) {
        if (usuarioRepository.findByUsername("alumno").isEmpty()) {
            usuarioRepository.save(new Usuario("alumno", passwordEncoder.encode("1234"), "Alumno de prueba"));
        }
        if (usuarioRepository.findByUsername("profe").isEmpty()) {
            usuarioRepository.save(new Usuario("profe", passwordEncoder.encode("abcd"), "Profesor"));
        }
    }
}
