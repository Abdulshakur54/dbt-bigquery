WITH items_power AS(
  SELECT name, power, id as item_id
  FROM {{source('mysources', 'items')}}
)

SELECT name, power, item_id
FROM items_power