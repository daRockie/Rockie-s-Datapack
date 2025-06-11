execute if entity @s[predicate=summonmob_main:in_hostile,tag=!RD.notNormal] run function custom_ai:advanced_ai/zombie/movement

execute if entity @s[tag=boomer_zombie,tag=!RD.no_chase] run tag @s add RD.no_chase