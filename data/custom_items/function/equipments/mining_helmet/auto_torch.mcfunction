execute at @s if entity @s[nbt={OnGround:1b}] if predicate useful-functions:is_dark store success score @s isSuccess run clear @s torch 2
execute if score @s isSuccess matches 1 at @s run function custom_items:equipments/mining_helmet/place_torch
