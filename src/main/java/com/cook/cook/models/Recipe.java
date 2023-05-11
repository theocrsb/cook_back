package com.cook.cook.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Recipe {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private @Id Long id;
    @Column(nullable = false)
    private String title;

    @Column
    private String description;

    @Column
    private Integer preparationTime;

    @Column
    private Integer cookingTime;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;
}
