package com.mypokedex.api.pokemon.repository;

import com.mypokedex.api.pokemon.model.entity.PokedexEntry;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PokedexEntryRepository extends JpaRepository<PokedexEntry, Long> {
    List<PokedexEntry> findByPokedexSlugOrderByEntryNumberAsc(String pokedexSlug);
}
