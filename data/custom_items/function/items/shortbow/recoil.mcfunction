$execute if entity @n[nbt={UUID:$(UUID)},distance=0.01..,type=player] run return run tag @s remove RD.randomAngle

execute store result score @s spawnRandom run random value 0..10
scoreboard players set #-1 spawnRandom -1

execute store result score @s RD.temp0 run data get entity @s Rotation[0] 1
execute store result score @s RD.block.calculator run random value 0..1
execute if score @s RD.block.calculator matches 1 run scoreboard players operation @s spawnRandom *= #-1 spawnRandom
scoreboard players operation @s RD.temp0 -= @s spawnRandom

execute store result entity @s Rotation[0] double 1 run scoreboard players get @s RD.temp0
#tellraw @a [{"text":"Rotate 0 is "},{"entity":"@s","nbt":"Rotation[0]"}]

execute store result score @s RD.temp0 run data get entity @s Rotation[1] 1
execute store result score @s RD.block.calculator run random value 0..1
execute if score @s RD.block.calculator matches 1 run scoreboard players operation @s spawnRandom *= #-1 spawnRandom
scoreboard players operation @s RD.temp0 -= @s spawnRandom
execute store result entity @s Rotation[1] double 1 run scoreboard players get @s RD.temp0

#tp @s ~ ~ ~ ~ ~45

tag @s remove RD.randomAngle
#tellraw @a [{"text":"Rotate 1 is "},{"entity":"@s","nbt":"Rotation[1]"}]