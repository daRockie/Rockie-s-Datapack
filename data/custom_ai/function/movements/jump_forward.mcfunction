summon marker ^ ^ ^5 {Tags:["jump_marker"]}

execute at @s run teleport @s ~ ~ ~ facing entity @e[tag=skeleton.target,limit=1,sort=nearest]

execute at @s run tp @s ~ ~ ~ ~180 ~

execute at @s store result score @s x run data get entity @s Pos[0] 500
execute at @s store result score @s z run data get entity @s Pos[2] 500

execute at @s store result score @s xDis run data get entity @e[limit=1,sort=nearest,tag=jump_marker] Pos[0] 500
execute at @s store result score @s zDis run data get entity @e[limit=1,sort=nearest,tag=jump_marker] Pos[2] 500

tellraw @a [{"score":{"objective":"xDis","name":"@s"}},", ",{"score":{"objective":"yDis","name":"@s"}},", ",{"score":{"objective":"zDis","name":"@s"}}]

execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s xDis
data modify entity @s Motion[1] set value 0.4
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s zDis

scoreboard players set @s ai_timer 0