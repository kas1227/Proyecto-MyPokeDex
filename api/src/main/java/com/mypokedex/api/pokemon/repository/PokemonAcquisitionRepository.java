package com.mypokedex.api.pokemon.repository;

import com.mypokedex.api.pokemon.model.entity.PokemonAcquisition;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PokemonAcquisitionRepository extends JpaRepository<PokemonAcquisition, Long> {
    List<PokemonAcquisition> findByPokemonNationalDexNumberAndGameSlug(Integer nationalDexNumber, String gameSlug);

    List<PokemonAcquisition> findByGameSlug(String gameSlug);
}
