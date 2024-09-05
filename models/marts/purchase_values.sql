WITH purchase_values AS(
    SELECT cls.name, cls.class, cls.character_id, inv.item_id, inv.cost, itm.name AS item_name, itm.power
    FROM {{ref("class_stg")}} cls
    INNER JOIN {{ref("inventory_cost_stg")}} inv
    ON cls.character_id = inv.character_id
    INNER JOIN {{ref("items_power_stg")}} itm
    ON inv.item_id = itm.item_id
)

SELECT *
FROM purchase_values