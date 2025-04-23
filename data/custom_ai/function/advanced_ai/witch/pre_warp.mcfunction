execute if score @s for matches 1.. run summon armor_stand ~ ~ ~ {NoGravity:1b,NoBasePlate:1b,Invisible:1b,Small:1b,Invulnerable:1b,Tags:["spread"]}
execute if score @s for matches 1.. run scoreboard players remove @s for 1
execute if score @s for matches 0 run function custom_ai:advanced_ai/witch/warp