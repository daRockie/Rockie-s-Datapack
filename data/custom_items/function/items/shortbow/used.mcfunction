tag @s add RD.itemUser
clear @s arrow 1

# 此処の記述はわんこマター氏の動画を参考にしました
# https://www.youtube.com/watch?app=desktop&v=QAzpbWODC5g
$execute anchored eyes run summon arrow ^ ^ ^ {Tags:["RD.shortbow_arrow"],life:1200s,damage:2d,Owner:$(UUID),Rotation:$(Rotation)}
execute rotated as @s positioned 0.0 0.0 0.0 run summon marker ^ ^0.05 ^2 {Tags:["RD.center_motion"]}
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 2

#execute as @e[type=armor_stand,tag=!proceed,tag=RD.shortbow] at @s run function custom_items:items/shortbow/dmg_init