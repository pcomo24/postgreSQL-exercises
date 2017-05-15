CREATE TABLE restaurant (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR,
distance NUMERIC,
stars INTEGER,
category VARCHAR,
favorite_dish VARCHAR,
takeout BOOLEAN,
last_meal_there DATE);

//Queries
/*SELECT name FROM restaurant WHERE stars = 5;
SELECT name, favorite_dish FROM restaurant WHERE stars = 5;
SELECT id FROM restaurant WHERE name='Cream Burger';
SELECT name FROM restaurant WHERE category='BBQ';
SELECT name FROM restaurant WHERE category='Mexican' AND takeout=TRUE;
SELECT name FROM restaurant WHERE distance <= 2;
SELECT name FROM restaurant WHERE last_meal_there >= now() - interval '1 week';
SELECT name FROM restaurant WHERE last_meal_there >= now() - interval '1 week' AND stars=5;
SELECT * FROM restaurant ORDER BY distance ASC;
SELECT * FROM restaurant ORDER BY distance ASC LIMIT 2;
SELECT * FROM restaurant WHERE distance <= 2 ORDER BY STARS  DESC LIMIT 2;
SELECT category, AVG(stars) FROM restaurant GROUP BY category;
SELECT category, MAX(stars) FROM restaurant GROUP BY category;*\
