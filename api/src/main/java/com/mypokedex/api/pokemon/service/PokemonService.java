package com.mypokedex.api.pokemon.service;

import com.mypokedex.api.pokemon.model.dto.AcquisitionDto;
import com.mypokedex.api.pokemon.model.dto.GameAcquisitionDto;
import com.mypokedex.api.pokemon.model.dto.GameDto;
import com.mypokedex.api.pokemon.model.dto.LocationDto;
import com.mypokedex.api.pokemon.model.dto.PokemonDto;
import com.mypokedex.api.pokemon.model.entity.Pokemon;
import com.mypokedex.api.pokemon.model.entity.PokemonAcquisition;
import com.mypokedex.api.pokemon.repository.PokemonAcquisitionRepository;
import com.mypokedex.api.pokemon.repository.PokemonRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class PokemonService {

    private final PokemonRepository pokemonRepository;
    private final PokemonAcquisitionRepository pokemonAcquisitionRepository;

    public Optional<PokemonDto> findById(Long id) {
        return pokemonRepository.findById(id)
                .map(this::toDto);
    }

    public Optional<PokemonDto> findByNationalDexNumber(Integer nationalDexNumber) {
        return pokemonRepository.findByNationalDexNumber(nationalDexNumber)
                .map(this::toDto);
    }

    public List<PokemonDto> searchByName(String name) {
        return pokemonRepository.findByNameContainingIgnoreCase(name)
                .stream()
                .map(this::toDto)
                .collect(Collectors.toList());
    }


    private PokemonDto toDto(Pokemon pokemon) {

        var types = pokemon.getTypeAssignments().stream()
                .map(a -> a.getPokemonType().getName())  // nombre en español del tipo
                .collect(Collectors.toList());

        var acquisitions = pokemon.getAcquisitions()
                .stream()
                .map(this::toAcquisitionDto)
                .collect(Collectors.toList());

        return new PokemonDto(
                pokemon.getId(),
                pokemon.getNationalDexNumber(),
                pokemon.getName(),
                types,
                pokemon.getImageUrl(),
                acquisitions
        );
    }

    public List<AcquisitionDto> findAcquisitionsByGameAndPokemon(String gameSlug, Integer nationalDexNumber) {
        return pokemonAcquisitionRepository.findByPokemonNationalDexNumberAndGameSlug(nationalDexNumber, gameSlug)
                .stream()
                .map(this::toAcquisitionDto)
                .collect(Collectors.toList());
    }

    public List<GameAcquisitionDto> findAcquisitionsByGame(String gameSlug) {
        return pokemonAcquisitionRepository.findByGameSlug(gameSlug)
                .stream()
                .map(this::toGameAcquisitionDto)
                .collect(Collectors.toList());
    }

    private AcquisitionDto toAcquisitionDto(PokemonAcquisition a) {
        var game = a.getGame();
        var method = a.getMethod();
        var location = a.getLocation();

        return new AcquisitionDto(
                game.getSlug(),
                method.getCode(),
                location == null ? null : location.getSlug(),
                a.getMinLevel(),
                a.getMaxLevel(),
                a.getNotes()
        );
    }

    private GameAcquisitionDto toGameAcquisitionDto(PokemonAcquisition a) {
        var pokemon = a.getPokemon();
        var method = a.getMethod();
        var location = a.getLocation();

        var types = pokemon.getTypeAssignments().stream()
                .map(ta -> ta.getPokemonType().getName())
                .collect(Collectors.toList());

        return new GameAcquisitionDto(
                pokemon.getNationalDexNumber(),
                pokemon.getName(),
                types,
                method.getCode(),
                location == null ? null : location.getSlug(),
                a.getMinLevel(),
                a.getMaxLevel(),
                a.getNotes()
        );
    }
}