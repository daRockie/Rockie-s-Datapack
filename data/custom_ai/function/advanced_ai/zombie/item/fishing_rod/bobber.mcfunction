summon armor_stand ^ ^1.5 ^0.75 {Tags:["RD.fishing_bobber"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 2
execute as @e[type=armor_stand,tag=!proceed,tag=RD.fishing_bobber] at @s run function custom_items:items/shortbow/zombie_init
scoreboard players add @s RD.temp0 1