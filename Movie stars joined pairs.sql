/* Create table about the people and what they do here */
CREATE TABLE moviestar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER);


INSERT INTO moviestar (fullname, age) VALUES ("Bobby McBobbyFace", "12");
INSERT INTO moviestar (fullname, age) VALUES ("Lucy BoBucie", "25");
INSERT INTO moviestar (fullname, age) VALUES ("Banana FoFanna", "14");
INSERT INTO moviestar (fullname, age) VALUES ("Shish Kabob", "20");
INSERT INTO moviestar (fullname, age) VALUES ("Fluffy Sparkles", "8");

CREATE table movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    moviestar_id INTEGER,
    name TEXT);

INSERT INTO movies (moviestar_id, name) VALUES (1, "For weeks");
INSERT INTO movies (moviestar_id, name) VALUES (1, "The owls");
INSERT INTO movies (moviestar_id, name) VALUES (2, "Glazes");
INSERT INTO movies (moviestar_id, name) VALUES (2, "Go back");
INSERT INTO movies (moviestar_id, name) VALUES (3, "Tell");
INSERT INTO movies (moviestar_id, name) VALUES (3, "The cabin");
INSERT INTO movies (moviestar_id, name) VALUES (3, "Just a game");
INSERT INTO movies (moviestar_id, name) VALUES (4, "Game over");
INSERT INTO movies (moviestar_id, name) VALUES (4, "House");


CREATE table marriage (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    moviestar1_id INTEGER,
    moviestar2_id INTEGER);

INSERT INTO marriage (moviestar1_id, moviestar2_id)
    VALUES (1, 4);
INSERT INTO marriage (moviestar1_id, moviestar2_id)
    VALUES (2, 3);
    
/* show movie star with the movie they acted in*/
    
select moviestar.fullname, movies.name from moviestar JOIN movies ON movies.moviestar_id = moviestar.id;
        
/* show marriage pairs */
    
select moviestar.fullname, m.fullname from marriage 
join moviestar on moviestar1_id= moviestar.id
join moviestar m on moviestar2_id = m.id;

