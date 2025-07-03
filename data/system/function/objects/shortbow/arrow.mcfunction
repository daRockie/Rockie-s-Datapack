#tellraw @a [{"selector":"@p"}]
execute if entity @s[tag=!pos_set] run function system:register with entity @s {}
#execute if entity @s[tag=!pos_set] run function system:getparent with entity @s {}
tag @s add pos_set

execute if score @s ai_timer matches 40.. run function system:objects/shortbow/poof with entity @s

$execute if entity @s[tag=RD.randomAngle] run function custom_items:items/shortbow/recoil with storage rockietools:uuid datas."$(UUID)".parent

# 移動
scoreboard players add @s ai_timer 1
tp @s[tag=pos_set] ^ ^ ^1.5
particle dust{color:[1,1,1],scale:1} ~ ~ ~ 0 0 0 0.025 1

execute unless block ~ ~0.5 ~ #custom_ai:no_collision run function system:objects/shortbow/poof with entity @s

# ダメージ
$execute if score @s ai_timer matches 3.. if entity @e[tag=!RD.shortbow,distance=0.01..2,type=!#minecraft:unliving_objects] run function system:objects/shortbow/damage with storage rockietools:uuid datas."$(UUID)".parent