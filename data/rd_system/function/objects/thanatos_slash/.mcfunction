execute if entity @s[tag=!RD.initialized] run playsound block.trial_spawner.about_to_spawn_item player @a ~ ~ ~ 1 2

tag @s[tag=!RD.initialized] add RD.initialized



$execute unless entity @n[nbt={UUID:$(owner)},predicate=rd_system:sneaking] anchored eyes facing entity @n[nbt=!{UUID:$(owner)},type=!#minecraft:ammos_dont_damage_to,distance=0.01..4,tag=!RD.ammo] eyes positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^0.9 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

$execute positioned ~-1.5 ~-1.5 ~-1.5 if entity @e[nbt=!{UUID:$(owner)},dx=3,dy=3,dz=3,type=!#ammos_dont_damage_to,distance=0.01..,tag=!RD.ammo] positioned as @s anchored eyes facing entity @n[type=!#minecraft:ammos_dont_damage_to,distance=0.01..10,nbt=!{UUID:$(owner)}] eyes positioned ^ ^ ^2.5 run return run function rd_system:objects/thanatos_slash/slash with entity @s equipment.head.components."minecraft:custom_data".data

tp @s ^ ^ ^2

# playsound entity.player.attack.sweep player @a ~ ~ ~ 0.5 1
particle dust_color_transition{from_color:2,scale:1,to_color:215151325} ~ ~ ~ 0.2 0.2 0.2 5 15



scoreboard players add @s ai_timer 1

# $execute if score @s ai_timer matches 10.. run tp @n[nbt={UUID:$(owner)}] @s

execute if score @s ai_timer matches 20.. run return run function rd_system:objects/thanatos_slash/explode with entity @s equipment.head.components."minecraft:custom_data".data

# function rd_system:objects/thanatos_slash/ with entity @s 
