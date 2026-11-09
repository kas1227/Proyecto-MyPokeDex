package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "pokemon_type_assignment",
        uniqueConstraints = {
        @UniqueConstraint(name = "uk_assignment_pokemon_slot",
                          columnNames = {"pokemon_id", "slot"}),
        @UniqueConstraint(name = "uk_assignment_pokemon_type",
                          columnNames = {"pokemon_id", "pokemon_type_id"})})
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class PokemonTypeAssignment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "pokemon_id", nullable = false)
    private Pokemon pokemon;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "pokemon_type_id", nullable = false)
    private PokemonType pokemonType;

    @Column(nullable = false)
    private  Integer slot;


}
