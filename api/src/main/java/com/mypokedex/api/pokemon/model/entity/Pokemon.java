package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "pokemon", indexes = @Index(name = "idx_pokemon_name", columnList = "name"))
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Pokemon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 100)
    private String name;

    @Column(nullable = false, unique = true)
    private Integer nationalDexNumber;

    @Column(name = "image_url", length = 255)
    private String imageUrl;

    @Setter(AccessLevel.NONE)
    @OneToMany(mappedBy = "pokemon", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("slot ASC")
    private List<PokemonTypeAssignment> typeAssignments = new ArrayList<>();

    public void  addTypeAssignment(PokemonTypeAssignment assingment){
        typeAssignments.add(assingment);
        assingment.setPokemon(this);
    }

    @Setter(AccessLevel.NONE)
    @OneToMany(mappedBy = "pokemon", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<PokemonAcquisition> acquisitions = new ArrayList<>();

    public void addAcquisition(PokemonAcquisition acquisition){
        acquisitions.add(acquisition);
        acquisition.setPokemon(this);
    }
}
