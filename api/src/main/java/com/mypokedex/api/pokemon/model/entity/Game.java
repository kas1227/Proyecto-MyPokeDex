package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.LinkedHashSet;
import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "game")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Game {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 50)
    private String name;

    @Column(nullable = false, length = 50, unique = true)
    private String slug;

    @Column(nullable = false)
    private Integer generation;

    @Setter(AccessLevel.NONE)
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "game_region",
            joinColumns        = @JoinColumn(name = "game_id"),
            inverseJoinColumns = @JoinColumn(name = "region_id")
    )
    private Set<Region> regions = new LinkedHashSet<>();


    @Setter(AccessLevel.NONE)
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "game_pokedex",
            joinColumns        = @JoinColumn(name = "game_id"),
            inverseJoinColumns = @JoinColumn(name = "pokedex_id")
    )
    private Set<Pokedex> pokedexes = new LinkedHashSet<>();

    public void addRegion(Region region)    { regions.add(region); }
    public void removeRegion(Region region) { regions.remove(region); }

    public void addPokedex(Pokedex pokedex) {
        pokedexes.add(pokedex);
        pokedex.getGames().add(this);   // Pokedex.games existe: hay que sincronizar
    }

    public void removePokedex(Pokedex pokedex) {
        pokedexes.remove(pokedex);
        pokedex.getGames().remove(this);
    }
}