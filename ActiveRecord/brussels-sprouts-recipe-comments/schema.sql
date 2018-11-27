
CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255)
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  body VARCHAR (255),
  recipe_id VARCHAR(255)
);
