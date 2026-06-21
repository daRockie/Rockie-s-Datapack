execute if entity @s[nbt={IsBaby:0b}] if predicate custom_ai:percent/20 run return run function rd_asset_mobs:summon/zombie/boomer/husk
execute if entity @s[nbt={IsBaby:1b}] if predicate custom_ai:percent/20 run return run function rd_asset_mobs:summon/zombie/baby/boomer/husk
execute if predicate custom_ai:percent/20 run return run function rd_asset_mobs:summon/summon_mummy
execute if predicate custom_ai:percent/20 run return run function rd_asset_mobs:summon/zombie/archer/husk
execute if predicate custom_ai:percent/20 run return run function rd_asset_mobs:summon/zombie/tank/husk