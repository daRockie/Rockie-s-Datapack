execute if entity @s[tag=RD.zombie_flag] run function custom_ai:object/flags/zombie_flag/tick
execute if entity @s[tag=RD.death_finder] on vehicle if entity @s[nbt={DeathTime:19s}] positioned ~-2 ~3 ~-2 as @e[type=armor_stand,tag=RD.death_finder,tag=!vehicleiskilled,dx=1,dy=-10,dz=1] run tag @s add vehicleiskilled
execute if entity @s[tag=RD.death_finder,tag=vehicleiskilled] run function custom_ai:object/death_finder
