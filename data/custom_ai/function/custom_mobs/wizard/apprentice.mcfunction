execute as @e[type=minecraft:skeleton,tag=wizard_1] if score @s mana matches 80.. at @s if entity @e[tag=skeleton.target,distance=0.1..3] at @s anchored feet unless block ^ ^-0.5 ^-4 #air anchored eyes if block ^ ^ ^-4 air if block ^ ^-1 ^-4 air run function custom_ai:movements/wizard/apprentice/wizard_warp
execute as @e[type=skeleton,tag=wizard_1] run scoreboard players add @s mana 0
execute as @e[type=minecraft:skeleton,tag=wizard_1] if score @s mana matches ..99 run scoreboard players add @s mana 1
execute as @e[type=skeleton,tag=wizard_1] run scoreboard players add @s mana 0