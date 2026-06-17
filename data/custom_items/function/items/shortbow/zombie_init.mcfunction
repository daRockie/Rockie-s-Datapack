execute if entity @n[distance=0.01..,type=#zombies,tag=RD.archer_zombie] facing entity @n[tag=zombies.target,distance=0.01..] eyes run tp @s ~ ~ ~ ~ ~ 
execute if entity @n[distance=0.01..,type=#zombies,tag=RD.archer_zombie] run tag @s add RD.randomAngle

tag @s add RD.initialized