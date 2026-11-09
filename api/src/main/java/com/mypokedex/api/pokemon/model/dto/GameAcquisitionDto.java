package com.mypokedex.api.pokemon.model.dto;

import java.util.List;

public record GameAcquisitionDto(
        Integer nationalDexNumber,
        String pokemonName,
        List<String> types,
        String methodCode,
        String locationSlug,
        Integer minLevel,
        Integer maxLevel,
        String notes
) {
}
