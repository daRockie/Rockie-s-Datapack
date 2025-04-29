
tellraw @s ["",{"text":"-40 Mana(","color":"aqua"},{"text":"ヒーリング","color":"gold"},{"text":")","color":"aqua"}]
tellraw @a[distance=1..4] ["",{"bold":true,"color":"green","selector":"@s"},{"bold":true,"color":"green","text":"がヒーリングワンドであなたを回復させました！"}]
playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 2
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 2
execute at @e[distance=0..4,type=!#illager,type=!#illager_friends,type=!#minecraft:arthropod,type=!#undead] run particle heart ~ ~1 ~ 0.5 0.5 0.5 0.05 10
particle happy_villager ~ ~1 ~ 1 1 1 0.025 25
effect give @e[distance=0..4,type=!#illager,type=!#illager_friends,type=!#minecraft:arthropod,type=!#undead] instant_health 1 0 false
scoreboard players add @s abilityCooldown.healing_wand 60
scoreboard players remove @s mana 40