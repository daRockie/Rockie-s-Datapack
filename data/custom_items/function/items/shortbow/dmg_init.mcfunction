execute as @n[type=armor_stand,tag=RD.shortbow] at @n[type=!armor_stand,tag=!RD.shortbow] run tp @s ~ ~1.5 ~ ~ ~

execute if entity @n[distance=0.01..,type=#zombies,tag=RD.archer_zombie] run tp @s ~ ~ ~ facing entity @n[tag=zombies.target]

execute store result score @s[tag=RD.randomAngle] spawnRandom run random value 0..10

execute store result score @s[tag=RD.randomAngle] RD.temp0 run data get entity @s[tag=RD.randomAngle] Rotation[0] 1
scoreboard players operation @s[tag=RD.randomAngle] RD.temp0 -= @s[tag=RD.randomAngle] spawnRandom
execute store result entity @s[tag=RD.randomAngle] Rotation[0] double 1 run scoreboard players get @s[tag=RD.randomAngle] RD.temp0

execute store result score @s[tag=RD.randomAngle] RD.temp0 run data get entity @s[tag=RD.randomAngle] Rotation[1] 1
scoreboard players operation @s[tag=RD.randomAngle] RD.temp0 -= @s[tag=RD.randomAngle] spawnRandom
execute store result entity @s[tag=RD.randomAngle] Rotation[1] double 1 run scoreboard players get @s[tag=RD.randomAngle] RD.temp0

tag @s add proceed