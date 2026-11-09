package com.mypokedex.api.login.service;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.crypto.SecretKey;
import java.nio.charset.StandardCharsets;
import java.util.Date;

/**
 * Crea y lee tokens JWT.
 *
 * Un JWT es un texto firmado que contiene datos (aquí, el nombre de usuario)
 * y una fecha de caducidad. Como va firmado con nuestra clave secreta,
 * nadie puede modificarlo sin que lo detectemos.
 */
@Service
public class JwtService {

    private final SecretKey clave;
    private final long duracion;

    // @Value lee los valores de application.properties
    public JwtService(@Value("${jwt.secreto}") String secreto,
                      @Value("${jwt.duracion}") long duracion) {
        this.clave = Keys.hmacShaKeyFor(secreto.getBytes(StandardCharsets.UTF_8));
        this.duracion = duracion;
    }

    /** Crea un token para el usuario indicado, válido durante "duracion" milisegundos */
    public String generarToken(String username) {
        Date ahora = new Date();
        Date caducidad = new Date(ahora.getTime() + duracion);

        return Jwts.builder()
                .subject(username)       // a quién pertenece el token
                .issuedAt(ahora)         // cuándo se creó
                .expiration(caducidad)   // cuándo caduca
                .signWith(clave)         // firma con la clave secreta
                .compact();              // lo convierte en texto
    }

    /**
     * Comprueba la firma y la caducidad del token y devuelve el nombre de usuario.
     * Si el token es falso, está modificado o ha caducado, lanza una excepción.
     */
    public String extraerUsername(String token) {
        return Jwts.parser()
                .verifyWith(clave)
                .build()
                .parseSignedClaims(token)
                .getPayload()
                .getSubject();
    }
}
