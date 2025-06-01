execute if entity @s[predicate=summonmob_main:in_hostile] run function custom_ai:advanced_ai/zombie/movement

execute if entity @s[tag=boomer_zombie,tag=!RD.no_chase] run tag @s add RD.no_chase

execute as @e[type=#minecraft:zombies,tag=boomer_zombie] at @s if entity @e[distance=0..5,type=#custom_ai:inhostile,limit=1,sort=nearest,type=!player] run tag @s add ignited
execute as @e[type=#zombies,tag=boomer_zombie] on target at @s if entity @s[type=player,gamemode=!creative,gamemode=!spectator,distance=0..5] as @e[type=#minecraft:zombies,tag=boomer_zombie,distance=0..5] run tag @s add ignited
execute as @e[type=#minecraft:zombies,tag=boomer_zombie,tag=ignited] run function custom_ai:custom_mobs/bz_script