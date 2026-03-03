execute store result score @s x run random value -50..50
data modify entity @s Motion[1] set value 0.8f
execute store result score @s z run random value -50..50

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s x
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s z
