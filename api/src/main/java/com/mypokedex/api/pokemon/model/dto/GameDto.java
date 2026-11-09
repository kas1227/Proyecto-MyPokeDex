package com.mypokedex.api.pokemon.model.dto;

public record GameDto(
        Long id,
        String name,
        String slug,
        Integer generation
) {
}
