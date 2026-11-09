package com.mypokedex.api.pokemon.service;

import com.mypokedex.api.pokemon.model.dto.LocationDto;
import com.mypokedex.api.pokemon.model.entity.Location;
import com.mypokedex.api.pokemon.repository.LocationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class LocationService {

    private final LocationRepository locationRepository;

    public List<LocationDto> listByGameSlug(String gameSlug) {
        return locationRepository.findByGameSlugOrderByDisplayOrderAsc(gameSlug).stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }

    private LocationDto toDto(Location location) {
        return new LocationDto(
                location.getId(),
                location.getName(),
                location.getSlug(),
                location.getDisplayOrder(),
                location.getGame().getSlug()
        );
    }
}
