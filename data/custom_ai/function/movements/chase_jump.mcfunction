execute at @s run teleport @s ~ ~ ~ facing entity @e[tag=zombies_target,limit=1,sort=nearest]

execute at @s store result score @s x run data get entity @s Pos[0] 500
execute at @s store result score @s z run data get entity @s Pos[2] 500

execute at @s store result score @s xDis run data get entity @e[limit=1,sort=nearest,tag=zombies_target] Pos[0] 500
execute at @s store result score @s zDis run data get entity @e[limit=1,sort=nearest,tag=zombies_target] Pos[2] 500

scoreboard players operation @s xDis -= @s x
scoreboard players operation @s zDis -= @s z

# tellraw @a [{"score":{"objective":"xDis","name":"@s"}},", ",{"score":{"objective":"yDis","name":"@s"}},", ",{"score":{"objective":"zDis","name":"@s"}}]

execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s xDis
data modify entity @s Motion[1] set value 0.45
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s zDis