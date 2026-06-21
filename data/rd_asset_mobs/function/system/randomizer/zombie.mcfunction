execute if entity @s[type=drowned] run return fail
execute if entity @s[type=husk] run return run function rd_asset_mobs:system/randomizer/husk
execute if entity @s[type=zombified_piglin] run return run function rd_asset_mobs:system/randomizer/zombified_piglin

execute if predicate {condition:"random_chance",chance:0.03} run return run function rd_asset_mobs:summon/zombie/leader/zombie

execute if entity @s[nbt={IsBaby:0b}] if predicate custom_ai:percent/20 run function rd_asset_mobs:summon/zombie/boomer/zombie
execute if entity @s[nbt={IsBaby:1b}] if predicate custom_ai:percent/20 run function rd_asset_mobs:summon/zombie/baby/boomer/zombie

execute if predicate custom_ai:percent/20 run function rd_asset_mobs:summon/zombie/archer/zombie
execute if entity @s[nbt={IsBaby:0b}] if predicate custom_ai:percent/20 run return run function rd_asset_mobs:summon/zombie/tank/zombie

