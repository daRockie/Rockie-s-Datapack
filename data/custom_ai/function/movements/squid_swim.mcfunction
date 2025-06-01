execute at @s run playsound minecraft:entity.squid.ambient hostile @a ~ ~ ~ 5 1
execute at @s run particle bubble ~ ~ ~ 0.05 0.05 0.05 0.05 10 normal @a

execute at @s store result score @s x run data get entity @s Pos[0] 500
execute at @s store result score @s y run data get entity @s Pos[1] 500
execute at @s store result score @s z run data get entity @s Pos[2] 500

execute at @s store result score @s xDis run data get entity @e[limit=1,sort=nearest,tag=zombies.target] Pos[0] 500
execute at @s store result score @s yDis run data get entity @e[limit=1,sort=nearest,tag=zombies.target] Pos[1] 500
execute at @s store result score @s zDis run data get entity @e[limit=1,sort=nearest,tag=zombies.target] Pos[2] 500

scoreboard players operation @s xDis -= @s x
scoreboard players operation @s yDis -= @s y
scoreboard players operation @s zDis -= @s z

# tellraw @a [{"score":{"objective":"xDis","name":"@s"}},", ",{"score":{"objective":"yDis","name":"@s"}},", ",{"score":{"objective":"zDis","name":"@s"}}]

execute store result entity @s Motion[0] double 0.0002 run scoreboard players get @s xDis
execute store result entity @s Motion[1] double 0.0002 run scoreboard players get @s yDis
execute store result entity @s Motion[2] double 0.0002 run scoreboard players get @s zDis