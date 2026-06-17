execute store result score @s spawnRandom run random value 0..100

execute if predicate custom_ai:percent/5 run return run function rd_asset_mobs:summon/arthropod/spider/venomous_spider
execute if predicate custom_ai:percent/5 run return run function rd_asset_mobs:summon/arthropod/spider/bloodmother
