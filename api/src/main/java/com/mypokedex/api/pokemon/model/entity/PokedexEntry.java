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
@Table(name = "pokedex_entry", uniqueConstraints = {
        @UniqueConstraint(name = "uk_pokedex_entry_pokemon",
                columnNames = {"pokedex_id", "pokemon_id"}
        ),
        @UniqueConstraint(name= "uk_pokedex_entry_number",
                columnNames = {"pokedex_id", "entry_number"}
        )
})
@EqualsAndHashCode(onlyExplicitlyIncluded = true)

public class PokedexEntry {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private  Long id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "pokedex_id", nullable = false)
    private Pokedex pokedex;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn (name = "pokemon_id", nullable = false)
    private  Pokemon pokemon;

    @Column(name = "entry_number", nullable = false)
    private  Integer entryNumber;
}
