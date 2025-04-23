particle explosion ~ ~1 ~
particle witch ~ ~1 ~ 0.5 0.5 0.5 0.05 15
playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1
spreadplayers ~ ~ 4 8 false @e[type=minecraft:armor_stand,tag=spread,distance=0..16]
particle explosion ~ ~1 ~
tp @s @e[type=armor_stand,tag=spread,distance=0..16,limit=1,sort=random]
kill @e[type=armor_stand,tag=spread,distance=0..16]