# say init
execute if entity @s[tag=RD.cmd] run return fail
execute if entity @s[tag=RD.no_auto_initialize] run return fail

tag @s[type=player] add RD.has_mana

execute if entity @s[tag=RD.has_mana] run function rd_asset_mobs:system/mana_initialize

tag @s add RD.initialized

execute if entity @s[type=player] run return run function rd_asset_mobs:system/link_marker with entity @s {}

execute store result score @s spawnRandom run random value 0..100

execute if entity @s[predicate=rd_asset_mobs:has_any_tag] run function rd_asset_mobs:randomize