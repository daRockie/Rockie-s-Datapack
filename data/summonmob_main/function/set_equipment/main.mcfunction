execute as @e[tag=!proceed,tag=!RD.noEquipment,type=!#minecraft:unliving_objects] store result score @s RD.enemy.equipment run random value 0..100

execute as @e[type=#custom_ai:hostile,tag=!RD.noEquipment] unless entity @s[type=#arthropod] if score @s RD.enemy.equipment matches 70.. as @s run function summonmob_main:set_equipment/entity_check