# execute if score @s RD.enemy.wizard.char matches 1 run function custom_ai:custom_mobs/wizard/amature/fiery_wand/main

execute if items entity @s[tag=!RD.enemy.wizard_has_ability_item] weapon *[custom_data] run function custom_ai:custom_mobs/wizard/amature/has_ability_item
