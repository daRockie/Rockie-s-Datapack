execute store result score @s spawnRandom run random value 0..100

execute if score @s spawnRandom matches 0..20 run function asset_mobs:summon/arthropod/spider/stinger
execute if score @s spawnRandom matches 21..30 run function asset_mobs:summon/arthropod/spider/bloodmother
