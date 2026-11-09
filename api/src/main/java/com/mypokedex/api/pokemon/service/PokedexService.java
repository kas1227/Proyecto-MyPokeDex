package com.mypokedex.api.pokemon.service;

import com.mypokedex.api.pokemon.model.dto.PokedexDto;
import com.mypokedex.api.pokemon.model.dto.PokedexEntryDto;
import com.mypokedex.api.pokemon.model.entity.PokedexEntry;
import com.mypokedex.api.pokemon.repository.PokedexEntryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class PokedexService {

    private final PokedexEntryRepository pokedexEntryRepository;

    public List<PokedexEntryDto> findEntriesByPokedexSlug(String slug) {
        return pokedexEntryRepository.findByPokedexSlugOrderByEntryNumberAsc(slug).stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }

    public List<PokedexDto> findPokedexesByGameSlug(String gameSlug) {
        // Por ahora devuelve las dos Pokédex que tienen ambos juegos (Kanto y Nacional).
        // En el futuro se podrá consultar game_pokedex para filtrar por juego.
        return List.of(
                new PokedexDto(1L, "Pokédex de Kanto", "kanto"),
                new PokedexDto(2L, "Pokédex Nacional", "nacional")
        );
    }

    private PokedexEntryDto toDto(PokedexEntry entry) {
        // Inicializa relación LAZY dentro de la transacción
        var pokemon = entry.getPokemon();
        return new PokedexEntryDto(
                entry.getEntryNumber(),
                pokemon.getId(),
                pokemon.getName(),
                pokemon.getNationalDexNumber()
        );
    }
}
