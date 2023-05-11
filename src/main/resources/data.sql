INSERT INTO Category (category_id, name)
VALUES (1, 'Entrées'),
       (2, 'Plats principaux'),
       (3, 'Desserts'),
       (4, 'Collations');

INSERT INTO Member (member_id, email, password, pseudo)
VALUES (1, 'john@example.com', 'password123', 'JohnDoe'),
       (2, 'emma@example.com', 'pass456', 'EmmaSmith');

INSERT INTO Recipe (id, title, description, preparation_time, cooking_time, category_id)
VALUES (1, 'Muffins santé', 'Délicieux muffins sains et énergétiques.', 15, 25, 1),
       (2, 'Pizza sportive', 'Une pizza légère et savoureuse pour les sportifs.', 20, 30, 2);


INSERT INTO Ingredient (ingredient_id, name)
VALUES (1, 'Farine'),
       (2, 'Levure chimique'),
       (3, 'Sel'),
       (4, 'Œufs'),
       (5, 'Sucre'),
       (6, 'Yaourt'),
       (7, 'Huile'),
       (8, 'Vanille'),
       (9, 'Pépites de chocolat'),
       (10, 'Pâte à pizza'),
       (11, 'Sauce tomate'),
       (12, 'Légumes variés'),
       (13, 'Fromage râpé');


INSERT INTO RecipeIngredient (recipe_ingredient_id, recipe_id, ingredient_id, quantity)
VALUES (1, 1, 1, '200g'),
       (2, 1, 2, '1 sachet'),
       (3, 1, 3, '1 pincée'),
       (4, 1, 4, '2'),
       (5, 1, 5, '150g'),
       (6, 1, 6, '100g'),
       (7, 1, 7, '50ml'),
       (8, 1, 8, '1 cuillère à café'),
       (9, 1, 9, '100g'),
       (10, 2, 10, '1 pâte'),
       (11, 2, 11, '150g'),
       (12, 2, 12, 'Quantité selon préférence'),
       (13, 2, 13, '100g');


INSERT INTO RecipeStep (step_id, description, recipe_id, step_order)
VALUES (3, 'Ajouter les œufs, le sucre, le yaourt et l'huile dans le bol. Bien mélanger.', 1, 3),
       (4, 'Incorporer les pépites de chocolat à la pâte.', 1, 4),
       (5, 'Verser la pâte dans des moules à muffins.', 1, 5),
       (6, 'Cuire au four pendant 20-25 minutes.', 1, 6),
       (7, 'Préchauffer le four à 200°C.', 2, 1),
       (8, 'Étaler la pâte à pizza sur une plaque.', 2, 2),
       (9, 'Étaler la sauce tomate sur la pâte.', 2, 3),
       (10, 'Disposer les légumes variés sur la sauce tomate.', 2, 4),
       (11, 'Saupoudrer de fromage râpé.', 2, 5),
       (12, 'Cuire au four pendant 15-20 minutes.', 2, 6);

INSERT INTO Comment (comment_id, text, recipe_id, user_id)
VALUES (1, 'Ces muffins sont délicieux ! Je les recommande vivement.', 1, 2),
       (2, 'Une recette simple et savoureuse. Parfaite pour les sportifs !', 1, 1),
       (3, 'J'adore cette pizza saine ! Elle est devenue ma préférée.', 2, 1),
       (4, 'La pizza était un succès lors de ma soirée sportive. Merci !', 2, 2);

-- Insertion dans la table FavoriteRecipe
INSERT INTO FavoriteRecipe (user_id, recipe_id)
VALUES (1, 1),
       (2, 2);

-- Insertion dans la table Rating
INSERT INTO Rating (rating_id, rating, recipe_id, user_id)
VALUES (1, 4, 1, 1),
       (2, 5, 2, 2);

-- Insertion dans la table Allergen
INSERT INTO Allergen (allergen_id, name)
VALUES (1, 'Gluten'),
       (2, 'Lactose'),
       (3, 'Arachides');

-- Insertion dans la table RecipeAllergen
INSERT INTO RecipeAllergen (recipe_allergen_id, recipe_id, allergen_id)
VALUES (1, 1, 1),
       (2, 1, 2),
       (3, 2, 2),
       (4, 2, 3);

-- Insertion dans la table Photo
INSERT INTO Photo (photo_id, url, recipe_id)
VALUES (1, 'https://example.com/muffin-photo.jpg', 1),
       (2, 'https://example.com/pizza-photo.jpg', 2);

