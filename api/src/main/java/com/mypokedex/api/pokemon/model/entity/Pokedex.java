package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.LinkedHashSet;
import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "pokedex")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Pokedex {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 50)
    private String name;

    @Column(nullable = false, length = 50, unique = true)
    private String slug;

    @Column(name = "display_order", nullable = false)
    private Integer displayOrder;

    // null = Pokédex nacional/global (no pertenece a una región)
    @ManyToOne(fetch = FetchType.LAZY, optional = true)
    @JoinColumn(name = "region_id", nullable = true)
    private Region region;

    @Setter(AccessLevel.NONE)
    @ManyToMany(mappedBy = "pokedexes", fetch = FetchType.LAZY)
    private Set<Game> games = new LinkedHashSet<>();
}
