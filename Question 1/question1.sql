CREATE DATABASE gameDB;

CREATE TABLE employee (
id serial PRIMARY KEY,
name varchar(64) NOT NULL);

CREATE TABLE activity (
id serial PRIMARY KEY,
activity_id INTEGER NOT NULL,
activity_date date NOT NULL,
activity_type varchar(20) NOT NULL,
employee_id INTEGER REFERENCES employees(id) NOT NULL,
winner BOOLEAN NOT NULL -- determines whether employee won during that game (True means win)
);

SELECT
	C.activity_id,
	C.activity_type,
	C.activity_date,
	C.money,
	sum(C.money) OVER (ORDER BY C.activity_date ASC) AS pot_money, -- this query is adding up the money 
	CASE WHEN sum(C.money) OVER (ORDER BY C.activity_date ASC) >= 800 THEN
		TRUE
	ELSE
		FALSE
	END AS party_next  -- determines if next activity should be a party or not. If it is a party, we insert the next date as party in the activity table
FROM (
--////////////////////////////////////////////////////////
	SELECT
		activity_id, activity_type, activity_date,
		CASE WHEN activity_type = 'game' THEN
			COUNT(
				CASE WHEN winner = FALSE THEN
					1
				END) * 10
		ELSE
			- 800
		END AS money -- if it was a game, we sum up the money. If it was a party, we remove 300 dollars.
	FROM
		activity
	GROUP BY
		activity_id,
		activity_type, 
		activity_date) C
--//////////////////////////////////////////////////////
ORDER BY
	activity_date ASC;