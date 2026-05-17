tag @s add RD.ability_user

playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1

summon armor_stand ~ ~ ~ {Pose:{Head:[0.1f,0.1f,0.1f]},NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["RD.fiery_wand","RD.spawned"],equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_data":{data:{owner:"",damage:6}},"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGM5NTg5ZmEwMWZlZWEzZjFhZTkxNDdjYTVlMjVmNWZhYmNlNGVmMDhmYjczNTczMTZiZjY3ODc5YjU4OWRhZCJ9fX0="}]}}}},DisabledSlots:4144959}

data modify entity @n[tag=RD.fiery_wand] equipment.head.components."minecraft:custom_data".data.owner set from entity @n[tag=RD.ability_user] {}.UUID

tag @n[tag=RD.ability_user] remove RD.ability_user