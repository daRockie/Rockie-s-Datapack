tag @s add RD.itemUser
#say A
clear @s arrow 1
summon armor_stand ^ ^1.75 ^ {Tags:["RD.tankyuu"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 2
execute as @e[type=armor_stand,tag=!RD.initialized,tag=RD.tankyuu] at @s run function custom_items:items/tankyuu/dmg_init