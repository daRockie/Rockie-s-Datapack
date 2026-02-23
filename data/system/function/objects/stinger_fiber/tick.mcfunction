#tellraw @a [{"selector":"@p"}]
execute if entity @s[tag=!pos_set] run function system:register with entity @s {}
#execute if entity @s[tag=!pos_set] run function system:getparent with entity @s {}
tag @s add pos_set

execute unless block ~ ~0.5 ~ #custom_ai:no_collision run function system:objects/stinger_fiber/poof with entity @s


execute if entity @s[tag=RD.randomAngle] run function system:objects/stinger_fiber/recoil

# 移動
scoreboard players add @s ai_timer 1
#tp @s[tag=pos_set] ^ ^ ^1.5
particle spit ~ ~ ~ 0 0 0 0.05 1

execute if score @s ai_timer matches 40.. run function system:objects/stinger_fiber/poof with entity @s


# ダメージ
$execute if entity @e[tag=!RD.fiber,distance=0.01..2,type=!#minecraft:unliving_objects] run function system:objects/stinger_fiber/damage with storage rockietools:uuid datas."$(UUID)"

execute unless score @s ai_timer matches 40.. positioned ^ ^ ^1.5 run function system:objects/stinger_fiber/tick with entity @s