# kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{TempItem:1b}}}}]

# execute as @a[tag=RD.combo_user] if score @s RD.damage_dealt matches 1.. run function custom_items:enchantment/reset_damage_dealt

execute as @a[predicate=custom_items:daytime] if dimension overworld run scoreboard players reset @s deathCount

execute as @e at @s if entity @a[distance=..80] as @s run function custom_items:variables/set_value

# Equipment
execute as @e[type=player] as @s at @s run function custom_items:player_tick

execute as @e[type=player] if entity @s[scores={RD.respawned=1..}] as @s at @s run function custom_items:on_respawn

# execute as @a if items entity @s weapon.* shield[custom_data~{CustomItem:"RD.anti_exp_shield"}] at @s if entity @e[tag=explosive_mobs,distance=0..8] run function custom_items:items/item.shield/0/