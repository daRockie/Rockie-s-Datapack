execute at @s store result score @s x run data get entity @s Pos[0] 10
execute at @s store result score @s y run data get entity @s Pos[1] 10
execute at @s store result score @s z run data get entity @s Pos[2] 10

execute at @s store result score @s xDis run data get entity @e[limit=1,sort=nearest,tag=zombies.target] Pos[0] 10
execute at @s store result score @s yDis run data get entity @e[limit=1,sort=nearest,tag=zombies.target] Pos[1] 10
execute at @s store result score @s zDis run data get entity @e[limit=1,sort=nearest,tag=zombies.target] Pos[2] 10

scoreboard players operation @s xDis -= @s x
scoreboard players operation @s yDis -= @s y
scoreboard players operation @s zDis -= @s z

# tellraw @a ["",{"score":{"objective":"xDis","name":"@s"}}]
# tellraw @a ["",{"score":{"objective":"yDis","name":"@s"}}]
# tellraw @a ["",{"score":{"objective":"zDis","name":"@s"}}]

execute store result entity @s[tag=!moveobj] Motion[0] double 0.01 run scoreboard players get @s xDis
execute store result entity @s[tag=!moveobj] Motion[1] double 0.05 run scoreboard players get @s yDis
execute store result entity @s[tag=!moveobj] Motion[2] double 0.01 run scoreboard players get @s zDis

tag @s add moveobj