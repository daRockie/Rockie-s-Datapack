
execute as @e[type=armor_stand] at @s as @s run function rd_system:objects/armor_stands

execute as @e[type=item,tag=RD.fiber] at @s run function rd_system:objects/stinger_fiber/tick

execute as @e[type=slime,tag=fire] run scoreboard players add @s RD.ai_timer 1
execute as @e[type=slime,tag=fire] if score @s RD.ai_timer matches 8.. run function rd_asset_mobs:summon/vanish

execute as @e[type=#arrows,tag=RD.shortbow_arrow] at @s run function rd_system:objects/arrow/ with entity @s equipment.head.components."minecraft:custom_data".data

execute as @e[tag=RD.set_motion] at @s run function rd_system:objects/set_motion