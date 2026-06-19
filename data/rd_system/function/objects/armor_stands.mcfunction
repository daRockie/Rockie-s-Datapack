execute if entity @s[tag=RD.fiery_wand] run function rd_system:objects/fiery_wand/magic_shot with entity @s equipment.head.components."minecraft:custom_data".data

execute if entity @s[tag=RD.sonicBoom,tag=!pos_set] at @s run function rd_system:objects/reverberation/sonic_boom with entity @s

execute if entity @s[tag=RD.shortbow] run function rd_system:objects/shortbow/arrow with entity @s equipment.head.components."minecraft:custom_data".data

execute if entity @s[tag=RD.thanatos_slash] run function rd_system:objects/thanatos_slash/ with entity @s equipment.head.components."minecraft:custom_data".data
