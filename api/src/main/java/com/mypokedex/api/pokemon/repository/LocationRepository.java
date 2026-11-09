package com.mypokedex.api.pokemon.repository;

import com.mypokedex.api.pokemon.model.entity.Location;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LocationRepository extends JpaRepository<Location, Long> {
    List<Location> findByGameSlugOrderByDisplayOrderAsc(String gameSlug);
}
