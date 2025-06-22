clear @s arrow 1
summon armor_stand ^ ^1.75 ^1.75 {Tags:["RD.shortbow"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 0.5 2
execute as @e[type=armor_stand,tag=!proceed,tag=RD.shortbow] at @s run function custom_items:items/shortbow/dmg_init