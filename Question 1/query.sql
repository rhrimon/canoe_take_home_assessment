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
	SELECT
		activity_id, activity_type, activity_date,
		CASE WHEN activity_type = 'GAME' THEN
			COUNT(
				CASE WHEN winner = FALSE THEN
					1
				END) * 10
		ELSE
			- 800
		END AS money -- if it was a game, we sum up the money. If it was a party, we remove 800 dollars.
	FROM
		activity
	GROUP BY
		activity_id,
		activity_type, 
		activity_date) C

ORDER BY
	activity_date ASC;