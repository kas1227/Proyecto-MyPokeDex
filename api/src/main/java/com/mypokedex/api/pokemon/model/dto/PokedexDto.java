package com.mypokedex.api.pokemon.model.dto;

public record PokedexDto(
        Long id,
        String name,
        String slug
) {}
