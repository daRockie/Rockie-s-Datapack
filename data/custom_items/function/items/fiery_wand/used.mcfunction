execute unless score @s mana matches 15.. run return run function custom_items:items/not_enough_mana
tag @s add RD.ability_user
tellraw @s ["",{"text":"-15 Mana(","color":"aqua"},{"text":"イグニッション","color":"gold"},{"text":")","color":"aqua"}]
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1
summon armor_stand ~ ~ ~ {Pose:{Head:[0.1f,0.1f,0.1f]},NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["fire_shot","spawned"],equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGM5NTg5ZmEwMWZlZWEzZjFhZTkxNDdjYTVlMjVmNWZhYmNlNGVmMDhmYjczNTczMTZiZjY3ODc5YjU4OWRhZCJ9fX0="}]}}}}}
scoreboard players remove @s mana 15