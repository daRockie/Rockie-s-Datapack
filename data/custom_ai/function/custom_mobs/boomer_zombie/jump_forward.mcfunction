summon marker ^ ^ ^4.5 {Tags:["jump_marker"]}

tp @s ~ ~ ~ facing entity @n[tag=zombies.target]

execute at @s store result score @s x run data get entity @s Pos[0] 500
execute at @s store result score @s z run data get entity @s Pos[2] 500

execute at @s store result score @s xDis run data get entity @n[tag=jump_marker] Pos[0] 500
execute at @s store result score @s zDis run data get entity @n[tag=jump_marker] Pos[2] 500

scoreboard players operation @s xDis -= @s x
scoreboard players operation @s zDis -= @s z

kill @e[type=marker,distance=0..16,tag=jump_marker]

# tellraw @a [{"score":{"objective":"xDis","name":"@s"}},", ",{"score":{"objective":"yDis","name":"@s"}},", ",{"score":{"objective":"zDis","name":"@s"}}]

execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s xDis
data modify entity @s Motion[1] set value 0.5
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s zDis