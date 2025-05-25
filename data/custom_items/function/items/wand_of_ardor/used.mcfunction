
tellraw @s ["",{"text":"-50 Mana(","color":"aqua"},{"text":"清らかな祈り","color":"gold"},{"text":")","color":"aqua"}]
tellraw @a[distance=1..4] ["",{"bold":true,"color":"green","selector":"@s"},{"bold":true,"color":"green","text":"が慈愛の杖であなたを回復させました！"}]
playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1 1.5
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 2
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
execute at @e[distance=0..4,type=!#illager,type=!#illager_friends,type=!#minecraft:arthropod,type=!#undead] run particle heart ~ ~1 ~ 0.5 0.5 0.5 0.05 10
particle entity_effect{color:[100, 100, 100, 1]} ~ ~1 ~ 0.5 0.5 0.5 0 25
particle instant_effect ~ ~ ~ 3 0 3 0 25
effect give @e[distance=0..6,type=!#illager,type=!#illager_friends,type=!#minecraft:arthropod,type=!#undead] instant_health 1 1 false
effect give @e[distance=0..6,type=!#illager,type=!#illager_friends,type=!#minecraft:arthropod,type=!#undead] absorption 10 1 false
scoreboard players add @s abilityCooldown.wand_of_ardor 60
scoreboard players remove @s mana 40