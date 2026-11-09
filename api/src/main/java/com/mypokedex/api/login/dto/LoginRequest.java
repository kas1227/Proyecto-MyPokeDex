package com.mypokedex.api.login.dto;

/**
 * Lo que envía Angular al hacer login: { "username": "...", "password": "..." }
 * Un record es una clase inmutable que Java crea con constructor y getters automáticos.
 */
public record LoginRequest(String username, String password) {
}
