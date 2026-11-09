package com.mypokedex.api.pokemon.repository;

import com.mypokedex.api.pokemon.model.entity.Game;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GameRepository extends JpaRepository<Game, Long> {
    List<Game> findAllByOrderByNameAsc();
}
