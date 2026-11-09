package com.mypokedex.api.pokemon.model.dto;

public record LocationDto (
        Long id,
        String name,
        String slug,
        Integer displayOrder,
        String gameSlug
){
}
