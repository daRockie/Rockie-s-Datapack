tellraw @s ["",{"text":"-15 Mana(","color":"aqua"},{"text":"イグニッション","color":"gold"},{"text":")","color":"aqua"}]
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["fire_shot","spawned"],equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGM5NTg5ZmEwMWZlZWEzZjFhZTkxNDdjYTVlMjVmNWZhYmNlNGVmMDhmYjczNTczMTZiZjY3ODc5YjU4OWRhZCJ9fX0="}]}}}}}
scoreboard players add @s abilityCooldown.fiery_wand 18
scoreboard players remove @s mana 15