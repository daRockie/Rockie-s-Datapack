execute as @n[type=armor_stand,tag=RD.fiber] at @n[type=!armor_stand,tag=!RD.fiber] run tp @s ~ ~1.5 ~ ~ ~

execute if entity @n[distance=0.01..,type=#arthropod,tag=RD.stinger] run tp @s ~ ~ ~ facing entity @n[tag=spider.target,distance=0.01..]
execute if entity @n[distance=0.01..,type=#arthropod,tag=RD.stinger] run tag @s add RD.randomAngle

tag @s add RD.initialized