execute on target run tag @s[tag=!RD.pirate.target] add RD.pirate.target
scoreboard players add @s ai_timer 1
# say a
execute if entity @n[type=mannequin,distance=..0.05,nbt={pose:"swimming"}] anchored eyes facing entity @p eyes positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^0.9 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.1 ~ ~

execute if score @s ai_timer matches 20.. run function custom_ai:w_mannequin/pirate/melee with entity @n[type=mannequin,distance=..0.05] equipment.body.components."minecraft:custom_data"

tag @n remove RD.pirate.target