package com.mypokedex.api.pokemon.model.dto;

public record AcquisitionDto(
        String gameSlug,
        String methodCode,
        String locationSlug,
        Integer minLevel,
        Integer maxLevel,
        String notes

) {
}
