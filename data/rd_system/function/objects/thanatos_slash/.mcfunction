execute if entity @s[tag=!RD.initialized] run playsound block.trial_spawner.about_to_spawn_item player @a ~ ~ ~ 1 2

tag @s[tag=!RD.initialized] add RD.initialized



$execute unless entity @n[nbt={UUID:$(owner)},predicate=rd_system:sneaking] anchored eyes facing entity @n[nbt=!{UUID:$(owner)},type=!#minecraft:unliving_objects,distance=..20] eyes positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^0.9 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~
tp @s ^ ^ ^2

playsound entity.player.attack.sweep player @a ~ ~ ~ 0.5 1
particle dust_color_transition{from_color:2,scale:1,to_color:215151325} ~ ~ ~ 0.2 0.2 0.2 5 15

$execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[nbt=!{UUID:$(owner)},dx=3,dy=3,dz=3] run damage @s $(damage) rd_system:no_bypass_magic by @n[nbt={UUID:$(owner)}]

scoreboard players add @s ai_timer 1

# $execute if score @s ai_timer matches 10.. run tp @n[nbt={UUID:$(owner)}] @s

execute if score @s ai_timer matches 10.. run return run function rd_system:objects/thanatos_slash/explode with entity @s equipment.head.components."minecraft:custom_data".data

# function rd_system:objects/thanatos_slash/ with entity @s 
