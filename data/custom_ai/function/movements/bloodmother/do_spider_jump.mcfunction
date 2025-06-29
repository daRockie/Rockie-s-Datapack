execute at @s run playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1.5 1
execute at @s run particle cloud ~ ~ ~ 0.05 0.05 0.05 0.05 3 normal @a

execute at @s store result score @s x run data get entity @s Pos[0] 1000
execute at @s store result score @s y run data get entity @s Pos[1] 1000
execute at @s store result score @s z run data get entity @s Pos[2] 1000

execute at @s store result score @s xDis run data get entity @e[limit=1,sort=nearest,tag=spider.target] Pos[0] 1000
execute at @s store result score @s yDis run data get entity @e[limit=1,sort=nearest,tag=spider.target] Pos[1] 1000
execute at @s store result score @s zDis run data get entity @e[limit=1,sort=nearest,tag=spider.target] Pos[2] 1000

scoreboard players operation @s xDis -= @s x
scoreboard players operation @s yDis -= @s y
scoreboard players operation @s zDis -= @s z

execute if score @s yDis matches ..800 run scoreboard players set @s yDis 1000

execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s xDis
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get @s yDis
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s zDis