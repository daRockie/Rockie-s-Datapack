execute at @p run tp @s[tag=!pos_set] ~ ~1 ~
data modify entity @s[tag=!pos_set] Pose.Head[1] set from entity @p Rotation[0]
data modify entity @s[tag=!pos_set] Pose.Head[0] set from entity @p Rotation[1]
data modify entity @s[tag=!pos_set] Rotation[0] set from entity @p Rotation[0]
data modify entity @s[tag=!pos_set] Rotation[1] set from entity @p Rotation[1]
execute if entity @s[tag=!pos_set] run function system:register with entity @s {}
#execute if entity @s[tag=!pos_set] run function system:getparent with entity @s {}

execute if score @s[tag=!pos_set] ai_timer matches 1.. run tag @s add pos_set

execute if score @s ai_timer matches 81.. run function system:objects/fiery_wand/extinguish with entity @s

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
$execute if entity @e[tag=!fire_shot,distance=0.01..1.5,type=!#minecraft:unliving_objects] run function system:objects/fiery_wand/ignition with storage rockietools:uuid datas."$(UUID)".parent
$execute at @s unless block ~ ~0.5 ~ #custom_ai:no_collision unless block ~ ~0.5 ~ light unless block ~ ~ ~ water run function system:objects/fiery_wand/ignition with storage rockietools:uuid datas."$(UUID)".parent