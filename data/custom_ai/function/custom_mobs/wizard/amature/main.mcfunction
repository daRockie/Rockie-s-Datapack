execute store result score @s RD.enemy.wizard.char run data get entity @s equipment.mainhand.components."minecraft:custom_data".ItemID 1

execute if score @s RD.enemy.wizard.char matches 1 run function custom_ai:custom_mobs/wizard/amature/fiery_wand/main