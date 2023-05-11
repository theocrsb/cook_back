package com.cook.cook.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class RecipeStep {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private @Id Long id;

    @ManyToOne
    @JoinColumn(name = "recipe_id")
    private Recipe recipe;

    @Column(name = "step_number")
    private Integer stepNumber;

    @Column
    private String description;

    @Column
    private Integer duration;
}
