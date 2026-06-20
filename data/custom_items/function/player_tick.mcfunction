function custom_items:equipments/armor_tick

execute if score @s deathCount matches 3.. run function custom_items:give_warp_potion

execute if entity @s[scores={RD.respawned=1..}] as @s at @s run function custom_items:on_respawn