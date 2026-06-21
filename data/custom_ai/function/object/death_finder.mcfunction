execute if entity @s[tag=DF.mummy,nbt={OnGround:1b}] run function custom_ai:movements/mummy/mummy_revive
execute if entity @s[tag=DF.mannequin] run function rd_asset_mobs:system/mannequin_kill with entity @n[type=mannequin] equipment.body.components."minecraft:custom_data".death_sound
execute if entity @s[tag=DF.zombie_flag,nbt={OnGround:1b}] run function custom_ai:object/flags/zombie_flag/break
execute if entity @s[tag=DF.cmd] run function custom_ai:object/looper