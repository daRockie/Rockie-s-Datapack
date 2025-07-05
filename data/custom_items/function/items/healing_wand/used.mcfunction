execute if score @s mana matches ..29 run return run function custom_items:items/not_enough_mana
tellraw @s ["",{"text":"-30 Mana(","color":"aqua"},{"text":"ヒーリング","color":"gold"},{"text":")","color":"aqua"}]
tellraw @a[distance=1..4] ["",{"bold":true,"color":"green","selector":"@s"},{"bold":true,"color":"green","text":"がヒーリングワンドであなたを回復させました！"}]
playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 2
execute at @e[distance=0..4,type=!#illager,type=!#illager_friends,type=!#minecraft:arthropod,type=!#undead] run particle heart ~ ~1 ~ 0.5 0.5 0.5 0.05 10
particle happy_villager ~ ~1 ~ 1 1 1 0.025 25
effect give @e[distance=0..4,type=!#illager,type=!#illager_friends,type=!#minecraft:arthropod,type=!#undead] instant_health 1 0 false
scoreboard players remove @s mana 30