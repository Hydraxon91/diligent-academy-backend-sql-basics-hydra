-- Genre Table
CREATE TABLE Genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Actor table

CREATE TABLE Actor (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birth_date DATE,
    birthplace VARCHAR(255),
    height DECIMAL(4, 1)
);

-- Movie Table

CREATE TABLE Movie (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    main_genre_id INT REFERENCES Genre(id) ON DELETE SET NULL,
    plot TEXT,
    release_date DATE
);

-- MovieActor table for handling many to many relationships 
CREATE TABLE MovieActor (
    movie_id INT REFERENCES Movie(id) ON DELETE CASCADE,
    actor_id INT REFERENCES Actor(id) ON DELETE CASCADE,
    PRIMARY KEY (movie_id, actor_id)
);