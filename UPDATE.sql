use movies;

INSERT INTO movies.actors (`name`, `character`, `movieid`, `dob`)
VALUES ('Brad Pitt', 'Tristan', 266, '12/18/1963')
('Angelina Jolie', 'Kate', 170, '06/04/1979'),
('Carrie Fisher', 'Princess Leia', 260, '10/21/1956');

select * from actors;

UPDATE movies.movies
set MPAA = 'PG'
WHERE movieid = 260;

UPDATE movies.movies
SET MPAA = 'PG-13'
WHERE movieid = 170;

UPDATE movies.movies
SET MPAA = 'R'
WHERE movieid = 266;

UPDATE movies.movies
SET MPAA = 'R'
WHERE movieid = 296;

UPDATE movies.movies
SET MPAA = 'R'
WHERE movieid = 318;

UPDATE tags
SET tag = LOWER(tag);

UPDATE tags
SET tag = REPLACE (tag, ' ', '-');

SELECT 
    m.movieid, g.id AS genre_id
FROM
    movies m
        JOIN
    genre g ON m.genres LIKE CONCAT('%', g.genres, '%')
ORDER BY m.movieid;





