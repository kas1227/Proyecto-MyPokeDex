package com.mypokedex.api.pokemon.repository;

import com.mypokedex.api.pokemon.model.entity.Pokedex;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PokedexRepository extends JpaRepository<Pokedex, Long> {
    Pokedex findBySlug(String slug);
}
