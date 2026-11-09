package com.mypokedex.api.login.security;

import com.mypokedex.api.login.model.Usuario;
import com.mypokedex.api.login.repository.UsuarioRepository;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

/**
 * Le dice a Spring Security cómo buscar un usuario en NUESTRA base de datos.
 * Spring Security lo usa al hacer login para comparar la contraseña.
 */
@Service
public class UsuarioDetailsService implements UserDetailsService {

    private final UsuarioRepository usuarioRepository;

    public UsuarioDetailsService(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<Usuario> resultado = usuarioRepository.findByUsername(username);

        if (resultado.isEmpty()) {
            throw new UsernameNotFoundException("Usuario no encontrado: " + username);
        }

        Usuario usuario = resultado.get();

        // Convertimos nuestro Usuario en el UserDetails que entiende Spring Security
        return User.withUsername(usuario.getUsername())
                .password(usuario.getPassword())
                .roles("USER")
                .build();
    }
}
