execute if entity @s[type=drowned] run return fail
execute if entity @s[type=husk] run return run function rd_asset_mobs:system/randomizer/husk
execute if entity @s[type=zombified_piglin] run return run function rd_asset_mobs:system/randomizer/zombie_piglin

execute if entity @s[nbt={IsBaby:0b}] if score @s spawnRandom matches 0..15 run function rd_asset_mobs:summon/zombie/boomer/zombie
execute if entity @s[tag=!proceed,nbt={IsBaby:1b}] if score @s spawnRandom matches 0..15 run function rd_asset_mobs:summon/zombie/baby/boomer/zombie

execute if score @s spawnRandom matches 16..35 run function rd_asset_mobs:summon/zombie/archer/zombie
execute if entity @s[tag=!proceed,nbt={IsBaby:0b}] if score @s spawnRandom matches 36..40 run function rd_asset_mobs:summon/zombie/tank/zombie

execute if entity @s[type=minecraft:husk,tag=!proceed,nbt={IsBaby:0b}] if score @s spawnRandom matches 0..15 run function rd_asset_mobs:summon/zombie/boomer/husk
execute as @e[type=minecraft:husk,tag=!proceed,nbt={IsBaby:1b}] if score @s spawnRandom matches 0..15 run function rd_asset_mobs:summon/zombie/baby/boomer/husk
execute as @e[type=minecraft:husk,tag=!proceed] if score @s spawnRandom matches 16..30 run function rd_asset_mobs:summon/summon_mummy
execute as @e[type=minecraft:husk,tag=!proceed] if score @s spawnRandom matches 31..45 run function rd_asset_mobs:summon/zombie/archer/husk
execute as @e[type=minecraft:husk,tag=!proceed] if score @s spawnRandom matches 46..60 run function rd_asset_mobs:summon/zombie/tank/husk