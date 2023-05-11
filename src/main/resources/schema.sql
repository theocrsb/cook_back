CREATE TABLE member (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    pseudo VARCHAR(255) NOT NULL
);
CREATE TABLE Category (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE Recipe (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  preparation_time INTEGER,
  cooking_time INTEGER,
  category_id INTEGER,
  FOREIGN KEY (category_id) REFERENCES Category (id)
);

CREATE TABLE Ingredient (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE RecipeIngredient (
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER,
  ingredient_id INTEGER,
  quantity VARCHAR(50),
  FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient (id)
);

CREATE TABLE Comment (
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER,
  user_id INTEGER,
  content TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
  FOREIGN KEY (user_id) REFERENCES Member (id)
);

CREATE TABLE FavoriteRecipe (
  member_id INTEGER,
  recipe_id INTEGER,
  PRIMARY KEY (member_id, recipe_id),
  FOREIGN KEY (member_id) REFERENCES Member (id),
  FOREIGN KEY (recipe_id) REFERENCES Recipe (id)
);

CREATE TABLE Rating (
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER,
  user_id INTEGER,
  rating INTEGER,
  FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
  FOREIGN KEY (user_id) REFERENCES Member (id)
);

CREATE TABLE RecipeStep (
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER,
  step_number INTEGER,
  description TEXT,
  duration INTEGER,
  FOREIGN KEY (recipe_id) REFERENCES Recipe (id)
);

CREATE TABLE Allergen (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE RecipeAllergen (
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER,
  allergen_id INTEGER,
  FOREIGN KEY (recipe_id) REFERENCES Recipe (id),
  FOREIGN KEY (allergen_id) REFERENCES Allergen (id)
);

CREATE TABLE RecipePhoto (
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER,
  photo_url VARCHAR(255),
  FOREIGN KEY (recipe_id) REFERENCES Recipe (id)
);
