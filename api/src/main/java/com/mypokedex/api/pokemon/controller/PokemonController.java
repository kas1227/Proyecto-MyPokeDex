package com.mypokedex.api.pokemon.controller;

import com.mypokedex.api.pokemon.model.dto.AcquisitionDto;
import com.mypokedex.api.pokemon.model.dto.GameAcquisitionDto;
import com.mypokedex.api.pokemon.model.dto.GameDto;
import com.mypokedex.api.pokemon.model.dto.LocationDto;
import com.mypokedex.api.pokemon.model.dto.PokedexDto;
import com.mypokedex.api.pokemon.model.dto.PokedexEntryDto;
import com.mypokedex.api.pokemon.model.dto.PokemonDto;
import com.mypokedex.api.pokemon.model.dto.RegionDto;
import com.mypokedex.api.pokemon.service.GameService;
import com.mypokedex.api.pokemon.service.LocationService;
import com.mypokedex.api.pokemon.service.PokedexService;
import com.mypokedex.api.pokemon.service.PokemonService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/pokemon")
@RequiredArgsConstructor
public class PokemonController {

    private final PokemonService pokemonService;
    private final GameService gameService;
    private final LocationService locationService;
    private final PokedexService pokedexService;

    // ========== Pokémon ==========

    @GetMapping("/{id}")
    public ResponseEntity<PokemonDto> getById(@PathVariable Long id) {
        return pokemonService.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/national/{number}")
    public ResponseEntity<PokemonDto> getByNationalDexNumber(@PathVariable Integer number) {
        return pokemonService.findByNationalDexNumber(number)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/search")
    public ResponseEntity<List<PokemonDto>> search(@RequestParam String name) {
        return ResponseEntity.ok(pokemonService.searchByName(name));
    }

    // ========== Adquisiciones ==========

    @GetMapping("/games/{gameSlug}/pokemon/{nationalDexNumber}/acquisitions")
    public ResponseEntity<List<AcquisitionDto>> acquisitions(
            @PathVariable String gameSlug,
            @PathVariable Integer nationalDexNumber) {

        return ResponseEntity.ok(
                pokemonService.findAcquisitionsByGameAndPokemon(gameSlug, nationalDexNumber)
        );
    }

    @GetMapping("/games/{gameSlug}/acquisitions")
    public ResponseEntity<List<GameAcquisitionDto>> acquisitionsByGame(@PathVariable String gameSlug) {
        return ResponseEntity.ok(pokemonService.findAcquisitionsByGame(gameSlug));
    }

    // ========== Juegos ==========

    @GetMapping("/games")
    public ResponseEntity<List<GameDto>> listGames() {
        return ResponseEntity.ok(gameService.listGames());
    }

    @GetMapping("/games/{gameSlug}/locations")
    public ResponseEntity<List<LocationDto>> locationsByGame(@PathVariable String gameSlug) {
        return ResponseEntity.ok(locationService.listByGameSlug(gameSlug));
    }

    @GetMapping("/games/{gameSlug}/regions")
    public ResponseEntity<List<RegionDto>> regionsByGame(@PathVariable String gameSlug) {
        // Región de un juego (por ahora solo Kanto, pero preparado para más)
        return ResponseEntity.ok(gameService.listRegionsByGameSlug(gameSlug));
    }

    @GetMapping("/games/{gameSlug}/pokedexes")
    public ResponseEntity<List<PokedexDto>> pokedexesByGame(@PathVariable String gameSlug) {
        return ResponseEntity.ok(pokedexService.findPokedexesByGameSlug(gameSlug));
    }

    // ========== Pokédex ==========

    @GetMapping("/pokedex/{slug}/entries")
    public ResponseEntity<List<PokedexEntryDto>> pokedexEntries(@PathVariable String slug) {
        return ResponseEntity.ok(pokedexService.findEntriesByPokedexSlug(slug));
    }
}