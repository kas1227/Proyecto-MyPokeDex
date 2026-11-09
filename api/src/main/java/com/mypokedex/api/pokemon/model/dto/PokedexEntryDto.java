package com.mypokedex.api.pokemon.model.dto;

public record PokedexEntryDto(
        Integer entryNumber,
        Long pokemonId,
        String pokemonName,
        Integer nationalDexNumber
) {}
