execute if entity @s[predicate=summonmob_main:in_hostile,tag=!RD.notNormal] as @s run function custom_ai:advanced_ai/zombie/movement

execute as @s[tag=RD.boomer_zombie,tag=ignited] if entity @s[nbt=!{IsBaby:1b}] run function custom_ai:custom_mobs/boomer_zombie/ignited

execute as @s[tag=RD.boomer_zombie,tag=ignited] if entity @s[nbt={IsBaby:1b}] run function custom_ai:custom_mobs/boomer_zombie/baby/ignited_baby

execute if entity @s[tag=!RD.archer_zombie] if items entity @s weapon firework_rocket[custom_data={CustomItem:"RD.shortbow"}] run tag @s add RD.archer_zombie

execute if entity @s[tag=RD.boomer_zombie,tag=!RD.no_chase] run tag @s add RD.no_chase
execute if entity @s[tag=RD.boomer_zombie] run function custom_ai:custom_mobs/auto_detonate