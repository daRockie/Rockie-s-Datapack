#tellraw @a [{"selector":"@p"}]
execute if entity @s[tag=!pos_set] run function system:register with entity @s {}
#execute if entity @s[tag=!pos_set] run function system:getparent with entity @s {}
tag @s add pos_set

execute if score @s ai_timer matches 70.. run function system:objects/reverberation/kill with entity @s

# 移動
scoreboard players add @s ai_timer 1
tp @s[tag=pos_set] ^ ^ ^4
particle sonic_boom ~ ~ ~ 0 0 0 0.025 1
playsound entity.generic.explode player @a ~ ~ ~ 0.7 1

# 破壊
$execute if entity @e[tag=!RD.sonicBoom,distance=0.01..4,type=!#minecraft:unliving_objects] run function system:objects/reverberation/damage with storage rockietools:uuid datas."$(UUID)".parent