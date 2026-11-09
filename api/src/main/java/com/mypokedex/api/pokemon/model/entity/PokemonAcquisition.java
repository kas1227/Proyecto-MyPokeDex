package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "pokemon_acquisition", indexes = {
        @Index(name = "idx_acquisition_game_method", columnList = "game_id, method_id"),
        @Index(name = "idx_acquisition_game_pokemon", columnList = "game_id, pokemon_id")
})
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class PokemonAcquisition {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "pokemon_id", nullable = false)
    private Pokemon pokemon;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "game_id", nullable = false)
    private Game game;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "method_id", nullable = false)
    private ObtainMethod method;

    // null en evolución, intercambio o regalo sin lugar concreto
    @ManyToOne(fetch = FetchType.LAZY, optional = true)
    @JoinColumn(name = "location_id", nullable = true)
    private Location location;

    @Column(name = "min_level")
    private Integer minLevel;

    @Column(name = "max_level")
    private Integer maxLevel;

    @Column(length = 255)
    private String notes;
}
