package com.mypokedex.api.pokemon.model.entity;

import jakarta.persistence.*;
import lombok.*;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "location", uniqueConstraints = @UniqueConstraint(
        name = "uk_location_game_slug",
        columnNames = {"game_id", "slug"}))
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Location {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 60)
    private String name;      // "Ruta 1"

    @Column(nullable = false, length = 60)
    private String slug;      // "ruta-1"

    // Orden de recorrido dentro del juego (Ruta 1, Ruta 2, ...)
    @Column(name = "display_order", nullable = false)
    private Integer displayOrder;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "game_id", nullable = false)
    private Game game;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "region_id", nullable = false)
    private Region region;
}
