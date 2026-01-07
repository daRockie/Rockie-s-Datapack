execute if entity @s[nbt={IsBaby:0b}] if score @s spawnRandom matches 0..15 run function asset_mobs:summon/zombie/boomer/husk
execute if entity @s[nbt={IsBaby:1b}] if score @s spawnRandom matches 0..15 run function asset_mobs:summon/zombie/baby/boomer/husk
execute if score @s spawnRandom matches 16..30 run function asset_mobs:summon/summon_mummy
execute if score @s spawnRandom matches 31..45 run function asset_mobs:summon/zombie/archer/husk
execute if score @s spawnRandom matches 46..60 run function asset_mobs:summon/zombie/tank/husk