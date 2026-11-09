package com.mypokedex.api.login.dto;

/**
 * Lo que devuelve el servidor si el login es correcto:
 * { "token": "eyJhbGciOi...", "username": "alumno", "nombre": "Alumno de prueba" }
 */
public record LoginResponse(String token, String username, String nombre) {
}
