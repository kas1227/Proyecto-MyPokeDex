package com.mypokedex.api.login.dto;

/** Datos del usuario conectado que devuelve /api/perfil */
public record PerfilResponse(String username, String nombre, String mensaje) {
}
