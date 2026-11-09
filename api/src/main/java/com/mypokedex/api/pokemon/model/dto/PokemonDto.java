package com.mypokedex.api.pokemon.model.dto;

import java.util.List;

public record PokemonDto(
        Long id,
        Integer nationalDexNumber,
        String name,
        List<String> types,
        String imageUrl,
        List<AcquisitionDto>acquisitions

) {
}
