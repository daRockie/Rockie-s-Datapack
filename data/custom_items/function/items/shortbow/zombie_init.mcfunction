execute as @n[type=armor_stand,tag=RD.shortbow] at @n[type=#zombies,tag=RD.archer_zombie] run tp @s ~ ~1.5 ~ ~ ~

execute if entity @n[distance=0.01..,type=#zombies,tag=RD.archer_zombie] run tp @s ~ ~ ~ facing entity @n[tag=zombies.target,distance=0.01..]
execute if entity @n[distance=0.01..,type=#zombies,tag=RD.archer_zombie] run tag @s add RD.randomAngle

tag @s add proceed