-- ### PART 1: Basic SQL!

-- 1. Add some movies! Add the title and synopsis of the last 5 movies you've seen that aren't already in the movies table. (If they have directors who aren't in the database, you'll have to add the directors as well!)
INSERT INTO directors (name) VALUES
  ('Dennis Dugan'),
  ('Christopher McQuarrie'),
  ('Christopher Nolan'),
  ('Peter Farrelly'),
  ('Adam McKay');

INSERT INTO movies (title, release_date, synopsis, director_id) VALUES
  ('Happy Gilmore',
  1996,
  'An unsuccessful ice hockey player who discovers a newfound talent for golf.',
  19),
  ('Mission: Impossible - Fallout',
  2018,
  'Ethan Hunt and his team must track down missing plutonium while being monitored by a CIA agent after a mission goes wrong.',
  20),
  ('Tenet',
  2020,
  'A secret agent learns to manipulate the flow of time to prevent an attack from the future that threatens to annihilate the present world.',
  21),
  ('Theres Something about Mary',
  1998,
  'A bunch of men are in love with Mary and vying for her affections.',
  22),
  ('Step Brothers',
  2008,
  'Two grown men are forced to live together as brothers after their single parents, with whom they still live, marry each other.',
  23);

-- 2. As you can see, there is a column for `release_date` in the movies table that hasn't been filled in yet. Add the release date of your 5 favorite movies in the movies table.
UPDATE movies
SET release_date = 2016
WHERE id = 10;

UPDATE movies
SET release_date = 1968
WHERE id = 12;

UPDATE movies
SET release_date = 1972
WHERE id = 15;

UPDATE movies
SET release_date = 1999
WHERE id = 21;

UPDATE movies
SET release_date = 2008
WHERE id = 36;

-- 3. Delete 5 movies from the list you don't like. Like them all? Add 5 movies that are total flops and then delete those suckers 😝.
DELETE FROM movies WHERE title IN ('Guardians of the Galaxy', 'District 9', 'Happy Gilmore', 'Theres Something about Mary', 'Mission: Impossible - Fallout');

-- 4. Add yourself as a user and create records in `users_movies`  to record your favorites.
INSERT INTO users (name) VALUES (
'Chris Spicer');

INSERT INTO users_movies (user_id, movie_id) VALUES (
7, 10), (7, 12), (7, 15), (7, 21), (7, 36);

-- ### PART 2: Joins!

-- 1. Select all the movies directed by Alex Garland.
SELECT movies.title
FROM movies JOIN directors ON (movies.director_id=directors.id)
WHERE directors.name = 'Alex Garland';

-- 2. Find the director who directed "There Will Be Blood".
SELECT directors.name
FROM directors JOIN movies ON (directors.id=movies.director_id)
WHERE movies.title = 'There Will Be Blood';

-- 3. Find all of J's favorites.
SELECT movies.title
FROM movies JOIN users_movies ON (movies.id = users_movies.movie_id)
JOIN users ON (users_movies.user_id=users.id)
WHERE users.name = 'J';

-- 4. Find everyone who added 'The Shining' as a favorite movie.
SELECT users.name
FROM movies JOIN users_movies ON (movies.id = users_movies.movie_id)
JOIN users ON (users_movies.user_id=users.id)
WHERE movies.title = 'The Shining';

-- 5. List all the movie titles and their corresponding directors.
SELECT movies.title, directors.name
FROM movies JOIN directors ON (movies.director_id=directors.id);

-- 6. Select the movie title and user name for all of the "favorites" represented by the users_movies table.
SELECT movies.title, users.name
FROM movies JOIN users_movies ON (movies.id = users_movies.movie_id)
JOIN users ON (users_movies.user_id=users.id);

-- ### PART 3: Advanced Queries!

-- These are gonna be hard. Make sure to use your friend google as a resource.

-- 1. List the movies with the number of favorites they have.

-- 2. List the names of directors along with the number of favorites that exist for all of the movies they've made, ordered by number of favorites descending.

-- 3. List the user name, director name and favorite count of all of the user/director combinations (based on the users_movies table).

-- 4. Find the favorite director (the director whose movies have the most favorites.)






DELETE FROM movies WHERE title IN ('Guardians of the Galaxy', 'District 9', 'Happy Gilmore', 'Theres Something about Mary', 'Mission: Impossible - Fallout');

10, 12, 15, 21, 36
INSERT INTO users_movies (user_id, movie_id) VALUES (
7, 10), (7, 12), (7, 15), (7, 21), (7, 36);