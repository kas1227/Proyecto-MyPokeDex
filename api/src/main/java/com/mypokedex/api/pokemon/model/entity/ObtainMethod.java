package com.mypokedex.api.pokemon.model.entity;

import com.mypokedex.api.pokemon.model.enums.MethodCategory;
import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "obtain_method")
@EqualsAndHashCode(onlyExplicitlyIncluded = true)

public class ObtainMethod {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;

    @Column(nullable = false, length = 30, unique = true)
    private String code;

    @Column(nullable = false, length = 50)
    private  String label;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 20)
    private MethodCategory category;

    @Column(name = "display_order", nullable = false)
    private  Integer displayOrder;
}
