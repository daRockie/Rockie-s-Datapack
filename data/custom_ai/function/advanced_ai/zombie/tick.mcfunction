execute if entity @s[predicate=summonmob_main:in_hostile,tag=!RD.notNormal] as @s run function custom_ai:advanced_ai/zombie/movement

execute if entity @s[tag=RD.boomer_zombie,tag=!RD.no_chase] run tag @s add RD.no_chase
execute if entity @s[tag=RD.boomer_zombie] run function custom_ai:custom_mobs/auto_detonate