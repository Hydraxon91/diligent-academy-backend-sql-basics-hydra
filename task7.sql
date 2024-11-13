-- Insert genres
INSERT INTO Genre (name) VALUES 
('Action'), 
('Comedy'), 
('Drama'), 
('Horror'), 
('Sci-Fi'), 
('Fantasy'), 
('Romance'), 
('Thriller');

-- Insert actors
INSERT INTO Actor (name, birth_date, birthplace, height) VALUES
('Robert Downey Jr.', '1965-04-04', 'New York, USA', 174.0),
('Chris Hemsworth', '1983-08-11', 'Melbourne, Australia', 190.5),
('Scarlett Johansson', '1984-11-22', 'New York, USA', 160.2),
('Morgan Freeman', '1937-06-01', 'Memphis, USA', 188.0),
('Emma Stone', '1988-11-06', 'Scottsdale, USA', 168.5),
('Leonardo DiCaprio', '1974-11-11', 'Los Angeles, USA', 183.0),
('Jennifer Lawrence', '1990-08-15', 'Indian Hills, USA', 175.0),
('Tom Hanks', '1956-07-09', 'Concord, USA', 183.0),
('Natalie Portman', '1981-06-09', 'Jerusalem, Israel', 160.0),
('Christian Bale', '1974-01-30', 'Haverfordwest, Wales', 183.5),
('Gal Gadot', '1985-04-30', 'Petah Tikva, Israel', 178.0),
('Brad Pitt', '1963-12-18', 'Shawnee, USA', 180.0),
('Matt Damon', '1970-10-08', 'Cambridge, USA', 178.0),
('Meryl Streep', '1949-06-22', 'Summit, USA', 168.0),
('Daniel Radcliffe', '1989-07-23', 'London, UK', 165.0),
('Emma Watson', '1990-04-15', 'Paris, France', 165.5),
('Denzel Washington', '1954-12-28', 'Mount Vernon, USA', 185.0),
('Cate Blanchett', '1969-05-14', 'Melbourne, Australia', 174.0),
('Keanu Reeves', '1964-09-02', 'Beirut, Lebanon', 186.0),
('Halle Berry', '1966-08-14', 'Cleveland, USA', 165.0),
('Tom Cruise', '1962-07-03', 'Syracuse, USA', 170.0),
('Hugh Jackman', '1968-10-12', 'Sydney, Australia', 188.0),
('Charlize Theron', '1975-08-07', 'Benoni, South Africa', 177.0),
('Samuel L. Jackson', '1948-12-21', 'Washington D.C., USA', 189.0),
('Chris Pratt', '1979-06-21', 'Virginia, USA', 188.0),
('Ryan Reynolds', '1976-10-23', 'Vancouver, Canada', 188.5),
('Anne Hathaway', '1982-11-12', 'Brooklyn, USA', 173.0),
('Sandra Bullock', '1964-07-26', 'Arlington, USA', 171.0),
('Michael B. Jordan', '1987-02-09', 'Santa Ana, USA', 183.0),
('Will Smith', '1968-09-25', 'Philadelphia, USA', 188.0),
('Zoe Saldana', '1978-06-19', 'Passaic, USA', 170.0),
('Mark Ruffalo', '1967-11-22', 'Kenosha, USA', 173.5),
('Ben Affleck', '1972-08-15', 'Berkeley, USA', 192.0),
('Mila Kunis', '1983-08-14', 'Chernivtsi, Ukraine', 163.0),
('Angelina Jolie', '1975-06-04', 'Los Angeles, USA', 169.0),
('Johnny Depp', '1963-06-09', 'Owensboro, USA', 178.0),
('Amy Adams', '1974-08-20', 'Vicenza, Italy', 163.5),
('Jessica Chastain', '1977-03-24', 'Sacramento, USA', 163.0),
('Chris Evans', '1981-06-13', 'Boston, USA', 183.0),
('Jake Gyllenhaal', '1980-12-19', 'Los Angeles, USA', 182.0);

-- Insert movies

INSERT INTO Movie (title, main_genre_id, plot, release_date) VALUES
('Inception', 5, 'A thief who steals corporate secrets through dream-sharing technology is given the inverse task of planting an idea.', '2010-07-16'),
('The Avengers', 1, 'Earth’s mightiest heroes must come together to stop an alien invasion.', '2012-05-04'),
('Titanic', 7, 'A romance unfolds aboard the doomed RMS Titanic.', '1997-12-19'),
('The Dark Knight', 1, 'Batman battles the Joker in Gotham City.', '2008-07-18'),
('The Matrix', 5, 'A hacker learns the truth about his reality and his role in a war against its controllers.', '1999-03-31'),
('La La Land', 7, 'A jazz musician and aspiring actress fall in love while pursuing their dreams.', '2016-12-09'),
('Jurassic Park', 5, 'Dinosaurs are brought back to life in a theme park, leading to chaos.', '1993-06-11'),
('Wonder Woman', 1, 'An Amazon princess leaves her island to fight in World War I.', '2017-06-02'),
('Interstellar', 5, 'A group of explorers travels through a wormhole to save humanity.', '2014-11-07'),
('The Godfather', 3, 'The powerful Corleone crime family navigates organized crime in post-war America.', '1972-03-24'),
('Harry Potter and the Sorcerers Stone', 6, 'A young boy learns he is a wizard and attends a magical school.', '2001-11-16'),
('Iron Man', 1, 'A billionaire industrialist builds a powered suit of armor and becomes a superhero.', '2008-05-02'),
('Deadpool', 1, 'A mercenary with a twisted sense of humor gains accelerated healing and seeks revenge.', '2016-02-12'),
('Avatar', 5, 'A paraplegic Marine is sent to the moon Pandora and finds himself torn between following orders and protecting a world he feels is his home.', '2009-12-18'),
('Forrest Gump', 3, 'The story of an extraordinary man who witnesses historical events firsthand.', '1994-07-06'),
('The Terminator', 1, 'A cyborg assassin from the future is sent back to kill Sarah Connor.', '1984-10-26'),
('Shutter Island', 4, 'A U.S. Marshal investigates the disappearance of a prisoner on an isolated island.', '2010-02-19'),
('The Lion King', 6, 'A young lion prince flees his kingdom after the death of his father.', '1994-06-24'),
('Pulp Fiction', 3, 'The lives of two mob hitmen, a boxer, a gangster, and his wife intertwine.', '1994-10-14'),
('The Shawshank Redemption', 3, 'Two imprisoned men bond over several years, finding solace and redemption.', '1994-09-23');


-- Insert movie-actor relationships
INSERT INTO MovieActor (movie_id, actor_id) VALUES
(1, 6), (1, 13), (2, 1), (2, 2), (2, 3), (2, 25), (3, 6), (3, 35), 
(4, 10), (4, 6), (4, 24), (5, 19), (5, 36), (6, 5), (6, 13),
(7, 6), (7, 26), (8, 11), (9, 6), (10, 24), (11, 14), (11, 15),
(12, 1), (13, 26), (14, 30), (15, 28), (16, 24), (17, 6), (18, 31),
(19, 36), (20, 4);