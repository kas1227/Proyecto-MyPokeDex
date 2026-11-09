package com.mypokedex.api.pokemon.repository;

import com.mypokedex.api.pokemon.model.entity.Pokemon;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface PokemonRepository extends JpaRepository<Pokemon, Long> {
    Optional<Pokemon> findByNationalDexNumber(Integer nationalDexNumber);

    List<Pokemon> findByNameContainingIgnoreCase(String name);
}
