execute at @s if entity @s[nbt={OnGround:1b}] if predicate rd_system:is_dark store success score @s isSuccess run clear @s torch 1
execute if score @s isSuccess matches 1 at @s run function custom_items:equipments/mining_helmet/place_torch
