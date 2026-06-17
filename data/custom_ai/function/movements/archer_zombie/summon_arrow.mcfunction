$summon armor_stand ^ ^1 ^ {Tags:["RD.shortbow"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,equipment:{head:{id:"command_block",components:{"item_model":"air","custom_data":{"data":{"owner":"$(UUID)","damage":6}}}}}}
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 2

data modify entity @n[tag=RD.shortbow,tag=!RD.initialized,type=armor_stand] equipment.head.components."minecraft:custom_data".data.owner set from entity @s {}.UUID

execute as @e[type=armor_stand,tag=RD.shortbow] at @s run function custom_items:items/shortbow/zombie_init


# $execute anchored eyes run summon arrow ^ ^ ^ {Tags:["RD.shortbow_arrow"],life:1200s,damage:2.6d,Owner:$(UUID),Rotation:$(Rotation)}
# execute as @e[type=#arrows,tag=!RD.initialized,tag=RD.shortbow_arrow] at @s run function custom_items:items/shortbow/zombie_init_new
# execute rotated as @s positioned 0.0 0.0 0.0 run summon marker ^ ^0.05 ^1.5 {Tags:["RD.center_motion"]}
# playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 2
scoreboard players add @s RD.temp0 1