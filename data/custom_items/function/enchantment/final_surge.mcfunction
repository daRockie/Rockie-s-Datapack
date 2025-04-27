execute if entity @s[scores={health=..6},tag=!final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":1}] at @s run playsound entity.illusioner.prepare_blindness player @a ~ ~ ~ 5 1
execute if entity @s[scores={health=..6},tag=!final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":1}] run tag @s add final_surge_1
execute if entity @s[scores={health=..6},tag=!final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":1}] run tag @s add final_surge

execute if entity @s[scores={health=..8},tag=!final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":2}] at @s run playsound entity.illusioner.prepare_blindness player @a ~ ~ ~ 5 1
execute if entity @s[scores={health=..8},tag=!final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":2}] run tag @s add final_surge_2
execute if entity @s[scores={health=..8},tag=!final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":2}] run tag @s add final_surge

execute if entity @s[scores={health=..10},tag=!final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":3}] at @s run playsound entity.illusioner.prepare_blindness player @a ~ ~ ~ 5 1
execute if entity @s[scores={health=..10},tag=!final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":3}] run tag @s add final_surge_3
execute if entity @s[scores={health=..10},tag=!final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":3}] run tag @s add final_surge

execute at @e[tag=final_surge] run particle trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0 1

execute at @e[tag=final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":1}] run effect give @s strength 3 0
execute at @e[tag=final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":2}] run effect give @s strength 3 1
execute at @e[tag=final_surge] if items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":3}] run effect give @s strength 3 2
