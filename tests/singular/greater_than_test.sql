SELECT name
FROM {{ref('class_stg')}}
WHERE character_id < 1