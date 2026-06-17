# execute as @a[tag=!RD.scanned_chunk] if dimension minecraft:overworld run function rd_asset_blocks:test_

execute if entity @s[tag=RD.zombie_flag] run function custom_ai:object/flags/zombie_flag/tick
execute if entity @s[tag=RD.zombie_flag_pre] run function custom_ai:object/flags/zombie_flag/thrown_tick

execute if entity @s[tag=RD.death_finder] on vehicle if entity @s[nbt={DeathTime:19s}] positioned ~-2 ~3 ~-2 as @e[type=armor_stand,tag=RD.death_finder,tag=!vehicleiskilled,dx=1,dy=-10,dz=1] run tag @s add vehicleiskilled
execute if entity @s[tag=RD.death_finder,tag=vehicleiskilled] run function custom_ai:object/death_finder
execute if entity @s[tag=RD.on_land,nbt={OnGround:1b}] run function custom_ai:object/on_land

execute if entity @s[type=mannequin] run function custom_ai:object/mannequin/

# execute if entity @s[tag=RD.head] run function custom_ai:object/trace_head_moving

execute if entity @s[tag=RD.cmd,tag=!RD.initialized] run function custom_ai:object/looper

execute if entity @s[tag=RD.marker.ore_generation,tag=!RD.initialized] run function custom_ai:object/marker/ore_generator/