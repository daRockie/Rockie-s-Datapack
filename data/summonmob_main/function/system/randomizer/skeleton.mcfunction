execute if entity @s[type=skeleton_horse] run return fail
execute if entity @s[type=wither_skeleton] run return run function summonmob_main:system/randomizer/wither_skeleton
execute if score @s spawnRandom matches 0..20 run function summonmob_main:system/randomizer/wizard

execute if score @s spawnRandom matches 21..35 run function summonmob_main:summon/skeleton/elite_skeleton