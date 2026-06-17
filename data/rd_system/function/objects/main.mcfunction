
execute as @e[type=armor_stand,tag=RD.fiery_wand] at @s as @s run function rd_system:objects/fiery_wand/magic_shot with entity @s equipment.head.components."minecraft:custom_data".data
execute as @e[type=armor_stand,tag=RD.sonicBoom,tag=!pos_set] at @s run function rd_system:objects/reverberation/sonic_boom with entity @s
execute as @e[type=armor_stand,tag=RD.shortbow] at @s run function rd_system:objects/shortbow/arrow with entity @s equipment.head.components."minecraft:custom_data".data
execute as @e[type=armor_stand,tag=RD.fishing_bobber] at @s run function rd_system:objects/fishing_bobber/tick with entity @s
execute as @e[type=item,tag=RD.fiber] at @s run function rd_system:objects/stinger_fiber/tick
execute as @e[type=armor_stand,tag=RD.thanatos_slash] at @s run function rd_system:objects/thanatos_slash/ with entity @s equipment.head.components."minecraft:custom_data".data

execute as @e[type=slime,tag=fire] run scoreboard players add @s ai_timer 1
execute as @e[type=slime,tag=fire] if score @s ai_timer matches 8.. run tp @s ~ ~-200 ~
execute as @e[type=slime,tag=fire] if score @s ai_timer matches 9.. run kill @s

execute as @e[type=vindicator,tag=knockback] run scoreboard players add @s ai_timer 1
execute as @e[type=vindicator,tag=knockback] if score @s ai_timer matches 12.. run tp @s ~ ~-200 ~
execute as @e[type=vindicator,tag=knockback] if score @s ai_timer matches 12.. run kill @s

execute as @e[type=#arrows,tag=RD.shortbow_arrow] at @s run function rd_system:objects/arrow/ with entity @s equipment.head.components."minecraft:custom_data".data

execute as @e[tag=RD.set_motion] at @s run function rd_system:objects/set_motion