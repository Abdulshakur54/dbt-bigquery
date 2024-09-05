WITH inventory_cost AS(
  SELECT item_id, (quantity * value) AS cost, character_id
  FROM {{source('mysources', 'inventory')}}
)

SELECT item_id, cost, character_id
FROM inventory_cost