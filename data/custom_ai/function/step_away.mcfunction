execute at @s run playsound minecraft:entity.bat.takeoff hostile @a ~ ~ ~ 1 2
execute at @s run particle cloud ~ ~ ~ 0.05 0.05 0.05 0.05 3 normal @a

execute at @s store result score @s x run data get entity @s Pos[0] 1000
execute at @s store result score @s z run data get entity @s Pos[2] 1000

execute at @s store result score @s xDis run data get entity @e[limit=1,sort=nearest,tag=boomer_zombie,distance=0.1..] Pos[0] 1000
execute at @s store result score @s zDis run data get entity @e[limit=1,sort=nearest,tag=boomer_zombie,distance=0.1..] Pos[2] 1000

scoreboard players operation @s xDis -= @s x
scoreboard players operation @s yDis -= @s y
scoreboard players operation @s zDis -= @s z

scoreboard players set #minusOne x -1
scoreboard players set #minusOne z -1

scoreboard players operation @s xDis *= #minusOne x
scoreboard players operation @s zDis *= #minusOne z

execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s xDis
execute run data modify entity @s Motion[1] set value 1
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s zDis