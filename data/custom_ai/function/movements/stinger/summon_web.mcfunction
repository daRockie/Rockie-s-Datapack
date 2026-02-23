summon armor_stand ^ ^1.5 ^ {Tags:["RD.fiber"],Small:1b,NoBasePlate:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b}
playsound minecraft:entity.snow_golem.hurt player @a ~ ~ ~ 1 0.5
execute as @e[type=armor_stand,tag=!proceed,tag=RD.fiber] at @s run function system:objects/stinger_fiber/dmg_init
scoreboard players add @s RD.temp0 1