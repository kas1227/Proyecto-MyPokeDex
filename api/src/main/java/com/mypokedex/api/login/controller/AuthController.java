package com.mypokedex.api.login.controller;

import com.mypokedex.api.login.dto.LoginRequest;
import com.mypokedex.api.login.dto.LoginResponse;
import com.mypokedex.api.login.model.Usuario;
import com.mypokedex.api.login.repository.UsuarioRepository;
import com.mypokedex.api.login.service.JwtService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final JwtService jwtService;
    private final UsuarioRepository usuarioRepository;

    public AuthController(AuthenticationManager authenticationManager,
                          JwtService jwtService,
                          UsuarioRepository usuarioRepository) {
        this.authenticationManager = authenticationManager;
        this.jwtService = jwtService;
        this.usuarioRepository = usuarioRepository;
    }

    /**
     * POST /api/auth/login
     * Recibe { username, password }. Si son correctos devuelve 200 con el token;
     * si no, 401 con un mensaje de error.
     */
    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody LoginRequest datos) {
        try {
            // Spring Security busca el usuario y compara la contraseña cifrada.
            // Si no coinciden, lanza una AuthenticationException.
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(datos.username(), datos.password())
            );
        } catch (AuthenticationException e) {
            return ResponseEntity
                    .status(HttpStatus.UNAUTHORIZED)
                    .body(Map.of("error", "Usuario o contraseña incorrectos"));
        }

        Usuario usuario = usuarioRepository.findByUsername(datos.username()).get();
        String token = jwtService.generarToken(usuario.getUsername());

        return ResponseEntity.ok(new LoginResponse(token, usuario.getUsername(), usuario.getNombre()));
    }
}
