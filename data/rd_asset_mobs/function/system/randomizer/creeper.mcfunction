execute store result score @s spawnRandom run random value 0..100

execute if score @s spawnRandom matches 0..10 run function rd_asset_mobs:summon/creeper/scout_creeper
execute if score @s spawnRandom matches 10..11 run function rd_asset_mobs:summon/creeper/nuke_creeper
execute if score @s spawnRandom matches 12..14 if predicate custom_items:can_see_sky run function rd_asset_mobs:summon/creeper/parachute_creeper
