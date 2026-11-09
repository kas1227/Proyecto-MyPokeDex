package com.mypokedex.api.login.repository;

import com.mypokedex.api.login.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

    /* select * from usuarios where username =  ?*/
    Optional<Usuario> findByUsername(String username);
}
