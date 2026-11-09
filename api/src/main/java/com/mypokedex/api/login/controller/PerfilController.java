package com.mypokedex.api.login.controller;

import com.mypokedex.api.login.dto.PerfilResponse;
import com.mypokedex.api.login.model.Usuario;
import com.mypokedex.api.login.repository.UsuarioRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
@RequestMapping("/api")
public class PerfilController {

    private final UsuarioRepository usuarioRepository;

    public PerfilController(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    /**
     * GET /api/perfil — ruta protegida: solo funciona con un token válido.
     * Spring rellena "principal" con el usuario que ha autenticado el JwtFilter.
     */
    @GetMapping("/perfil")
    public PerfilResponse perfil(Principal principal) {
        Usuario usuario = usuarioRepository.findByUsername(principal.getName()).get();
        return new PerfilResponse(
                usuario.getUsername(),
                usuario.getNombre(),
                "Si ves este mensaje, tu token es válido"
        );
    }
}
