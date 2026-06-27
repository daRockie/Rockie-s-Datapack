scoreboard players add @s RD.mobs.temp 1

effect clear @s slowness

execute if score @s RD.mobs.temp matches 30.. run return run function custom_ai:custom_mobs/void/bellwether/attacks/beam/explode with entity @s {}

execute unless block ~ ~ ~ #custom_ai:no_collision run return run function custom_ai:custom_mobs/void/bellwether/attacks/beam/explode with entity @s {}
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.05 2
particle witch ~ ~ ~ 0.5 0.5 0.5 0.05 2
particle dust_color_transition{from_color:[0.75,0.0,1.0],to_color:[0.0,0.0,0.0],scale:1} ~ ~ ~ 0.5 1 0.5 0.5 25

execute positioned ^ ^ ^1 run function custom_ai:custom_mobs/void/bellwether/attacks/beam/shoot