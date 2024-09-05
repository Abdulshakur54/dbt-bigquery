WITH character_class AS
(
  SELECT name, id AS character_id,  class
  FROM {{source('mysources', 'characters')}}
)

SELECT name, class, character_id
FROM character_class