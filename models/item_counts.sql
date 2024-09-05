{{config(materialized = "table")}}
WITH itemcounts AS
(
SELECT c.id AS id, c.name AS name, COUNT(item_id) AS item_count
FROM dbt-bigquery-432917.fantasy.characters c
INNER JOIN dbt-bigquery-432917.fantasy.inventory i
ON c.id = i.character_id
GROUP BY c.id,c.name
ORDER BY item_count DESC
)
SELECT id, name, item_count FROM itemcounts