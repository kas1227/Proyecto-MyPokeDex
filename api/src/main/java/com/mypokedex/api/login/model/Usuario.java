package com.mypokedex.api.login.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**
 * Usuario guardado en la base de datos.
 * La contraseña se guarda cifrada con BCrypt, nunca en texto plano.
 */
@Entity
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true, nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    private String nombre;

    public Usuario() {
    }

    public Usuario(String username, String password, String nombre) {
        this.username = username;
        this.password = password;
        this.nombre = nombre;
    }

    public Long getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getNombre() {
        return nombre;
    }
}
