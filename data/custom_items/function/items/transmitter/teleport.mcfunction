#tellraw @a [{"score":{"name":"@s","objective":"RD.returnFunction"}}]
scoreboard players add @s RD.returnFunction 1
execute if score @s RD.returnFunction matches 1 run particle explosion ~ ~1 ~

#particle firework ~ ~ ~ 0.5 0.5 0.5 0.05 1
execute unless block ~ ~1 ~ #custom_ai:no_collision run return run execute positioned ^ ^ ^-0.1 run function custom_items:items/transmitter/teleport
execute unless block ~ ~1 ~ #custom_ai:no_collision run return run execute positioned ^ ^ ^-0.1 run function custom_items:items/transmitter/teleport
#execute if block ~ ~1 ~ #custom_ai:no_collision run particle dust_color_transition{from_color:[0.75,0.0,1.0],to_color:[0.0,0.0,0.0],scale:1} ~ ~1 ~ 0.05 0.05 0.05 0.5 1
execute if score @s RD.returnFunction matches 160.. run return run function custom_items:items/transmitter/tp_end
execute positioned ^ ^ ^0.1 run function custom_items:items/transmitter/teleport