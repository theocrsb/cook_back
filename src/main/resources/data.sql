INSERT INTO Category (name)
VALUES ('Entrées'),
       ('Plats principaux'),
       ('Desserts'),
       ('Collations');

INSERT INTO Member (email, password, pseudo)
VALUES ('john@example.com', 'password123', 'JohnDoe'),
       ('emma@example.com', 'pass456', 'EmmaSmith');

INSERT INTO Recipe (title, description, preparation_time, cooking_time, category_id)
VALUES ('Muffins santé', 'Délicieux muffins sains et énergétiques.', 15, 25, 1),
       ('Pizza sportive', 'Une pizza légère et savoureuse pour les sportifs.', 20, 30, 2);


INSERT INTO Ingredient (name)
VALUES ('Farine'),
       ('Levure chimique'),
       ('Sel'),
       ('Œufs'),
       ('Sucre'),
       ('Yaourt'),
       ('Huile'),
       ('Vanille'),
       ('Pépites de chocolat'),
       ('Pâte à pizza'),
       ('Sauce tomate'),
       ('Légumes variés'),
       ('Fromage râpé');


INSERT INTO RecipeIngredient (recipe_id, ingredient_id, quantity)
VALUES (1, 1, '200g'),
       (1, 2, '1 sachet'),
       (1, 3, '1 pincée'),
       (1, 4, '2'),
       (1, 5, '150g'),
       (1, 6, '100g'),
       (1, 7, '50ml'),
       (1, 8, '1 cuillère à café'),
       (1, 9, '100g'),
       (2, 10, '1 pâte'),
       (2, 11, '150g'),
       (2, 12, 'Quantité selon préférence'),
       (2, 13, '100g');


INSERT INTO RecipeStep (recipe_id, step_order, description, duration)
VALUES
  (1, 3, 'Ajouter les œufs, le sucre, le yaourt et l huile dans le bol. Bien mélanger.', NULL),
  (1, 4, 'Incorporer les pépites de chocolat à la pâte.', NULL),
  (1, 5, 'Verser la pâte dans des moules à muffins.', NULL),
  (1, 6, 'Cuire au four pendant 20-25 minutes.', NULL),
  (2, 1, 'Préchauffer le four à 200°C.', NULL),
  (2, 2, 'Étaler la pâte à pizza sur une plaque.', NULL),
  (2, 3, 'Étaler la sauce tomate sur la pâte.', NULL),
  (2, 4, 'Disposer les légumes variés sur la sauce tomate.', NULL),
  (2, 5, 'Saupoudrer de fromage râpé.', NULL),
  (2, 6, 'Cuire au four pendant 15-20 minutes.', NULL);

INSERT INTO Comment (content, recipe_id, user_id)
VALUES ('Ces muffins sont délicieux ! Je les recommande vivement.', 1, 2),
       ('Une recette simple et savoureuse. Parfaite pour les sportifs !', 1, 1),
       ('J adore cette pizza saine ! Elle est devenue ma préférée.', 2, 1),
       ('La pizza était un succès lors de ma soirée sportive. Merci !', 2, 2);

-- Insertion dans la table FavoriteRecipe
INSERT INTO FavoriteRecipe (member_id, recipe_id)
VALUES (1, 1),
       (2, 2);

-- Insertion dans la table Rating
INSERT INTO Rating (rating, recipe_id, user_id)
VALUES (4, 1, 1),
       (5, 2, 2);

-- Insertion dans la table Allergen
INSERT INTO Allergen (name)
VALUES ('Gluten'),
       ('Lactose'),
       ('Arachides');

-- Insertion dans la table RecipeAllergen
INSERT INTO RecipeAllergen (recipe_id, allergen_id)
VALUES (1, 1),
       (1, 2),
       (2, 2),
       (2, 3);

-- Insertion dans la table Photo
INSERT INTO RecipePhoto (photo_url, recipe_id)
VALUES ('https://example.com/muffin-photo.jpg', 1),
       ('https://example.com/pizza-photo.jpg', 2);

