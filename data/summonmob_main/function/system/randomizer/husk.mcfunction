execute if entity @s[nbt={IsBaby:0b}] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/zombie/boomer/husk
execute if entity @s[nbt={IsBaby:1b}] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/zombie/baby/boomer/husk
execute if score @s spawnRandom matches 16..30 run function summonmob_main:summon/summon_mummy
execute if score @s spawnRandom matches 31..45 run function summonmob_main:summon/zombie/archer/husk
execute if score @s spawnRandom matches 46..60 run function summonmob_main:summon/zombie/tank/husk