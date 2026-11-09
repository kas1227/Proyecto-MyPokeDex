package com.mypokedex.api.pokemon.service;

import com.mypokedex.api.pokemon.model.dto.GameDto;
import com.mypokedex.api.pokemon.model.dto.RegionDto;
import com.mypokedex.api.pokemon.model.entity.Game;
import com.mypokedex.api.pokemon.repository.GameRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class GameService {

    private final GameRepository gameRepository;

    public List<GameDto> listGames() {
        return gameRepository.findAllByOrderByNameAsc().stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }

    private GameDto toDto(Game game) {
        return new GameDto(
                game.getId(),
                game.getName(),
                game.getSlug(),
                game.getGeneration()
        );
    }

    public List<RegionDto> listRegionsByGameSlug(String gameSlug) {
        // Por ahora solo existe la región Kanto asociada a ambos juegos.
        // En el futuro se podrá filtrar por game_region si un juego tiene varias regiones.
        return gameRepository.findAllByOrderByNameAsc().stream()
                .filter(g -> g.getSlug().equals(gameSlug))
                .flatMap(g -> g.getRegions().stream())
                .map(r -> new RegionDto(r.getId(), r.getName()))
                .collect(Collectors.toList());
    }
}
