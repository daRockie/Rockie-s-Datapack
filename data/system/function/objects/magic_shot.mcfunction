execute at @p run tp @s[tag=!pos_set] ~ ~1 ~ ~ ~
execute if score @s ai_timer matches 2.. run tag @s add pos_set

execute if score @s ai_timer matches 80.. run playsound entity.generic.extinguish_fire player @a ~ ~ ~ 1 1
execute if score @s ai_timer matches 80.. run particle lava ~ ~ ~ 0.05 0.05 0.05 0.25 15
execute if score @s ai_timer matches 80.. run kill @s

# 移動
scoreboard players add @s ai_timer 1
tp @s[tag=pos_set] ^ ^ ^0.8
particle flame ~ ~0.7 ~ 0.05 0.05 0.05 0.025 1
particle smoke ~ ~0.7 ~ 0.05 0.05 0.05 0.05 3

# 消滅
execute if block ~ ~ ~ water run playsound entity.generic.extinguish_fire player @a ~ ~ ~ 1 1
execute if block ~ ~ ~ water run particle large_smoke ~ ~ ~ 0.5 0 0.5 0.05 15
execute if block ~ ~ ~ water run kill @s

# 着火、起爆
execute if score @s ai_timer matches 8.. if entity @e[tag=!fire_shot,distance=0.01..1.5,type=!#minecraft:unliving_objects] run function system:objects/ignition
execute at @s unless block ~ ~0.5 ~ air unless block ~ ~ ~ water run function system:objects/ignition