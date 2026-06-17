tag @s add RD.ability_user

playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 1 0.5
playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 2 0.5

summon armor_stand ~ ~1 ~ {Tags:["RD.thanatos_slash","RD.no_auto_initialize","RD.spawned","RD.ammo"],Invulnerable:1b,Invisible:1b,Small:1b,equipment:{head:{id:"oak_button",components:{"item_model":air,"minecraft:custom_data":{data:{owner:"",damage:6}}}}},DisabledSlots:4144959}

execute at @s run tp @n[tag=!RD.initialized,tag=RD.thanatos_slash] ~ ~2 ~ ~ ~

data modify entity @n[tag=RD.thanatos_slash] equipment.head.components."minecraft:custom_data".data.owner set from entity @n[tag=RD.ability_user] {}.UUID

tag @n[tag=RD.ability_user] remove RD.ability_user