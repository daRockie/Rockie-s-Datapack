scoreboard players add @s RD.mobs.temp 1

effect clear @s slowness

execute if score @s RD.mobs.temp matches 30.. run return run function custom_ai:custom_mobs/void/bellwether/attacks/beam/explode with entity @s {}

execute unless block ~ ~ ~ #custom_ai:no_collision run return run function custom_ai:custom_mobs/void/bellwether/attacks/beam/explode with entity @s {}
particle end_rod ~ ~ ~
execute positioned ^ ^ ^1 run function custom_ai:custom_mobs/void/bellwether/attacks/beam/shoot