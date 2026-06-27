execute unless entity @a[predicate=custom_ai:gamemode,distance=..20] run function rd_asset_mobs:summon/vanish

data modify entity @s NoAI set value 1b
data modify entity @s ignited set value 1b
