execute if entity @s[type=drowned] run return fail
execute if entity @s[type=husk] run return run function summonmob_main:system/randomizer/husk

execute if entity @s[nbt={IsBaby:0b}] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/zombie/boomer/zombie
execute if entity @s[tag=!proceed,nbt={IsBaby:1b}] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/zombie/baby/boomer/zombie

execute if score @s spawnRandom matches 16..35 run function summonmob_main:summon/zombie/archer/zombie
execute if entity @s[tag=!proceed,nbt={IsBaby:0b}] if score @s spawnRandom matches 36..40 run function summonmob_main:summon/zombie/tank/zombie

execute if entity @s[type=minecraft:husk,tag=!proceed,nbt={IsBaby:0b}] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/zombie/boomer/husk
execute as @e[type=minecraft:husk,tag=!proceed,nbt={IsBaby:1b}] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/zombie/baby/boomer/husk
execute as @e[type=minecraft:husk,tag=!proceed] if score @s spawnRandom matches 16..30 run function summonmob_main:summon/summon_mummy
execute as @e[type=minecraft:husk,tag=!proceed] if score @s spawnRandom matches 31..45 run function summonmob_main:summon/zombie/archer/husk
execute as @e[type=minecraft:husk,tag=!proceed] if score @s spawnRandom matches 46..60 run function summonmob_main:summon/zombie/tank/husk