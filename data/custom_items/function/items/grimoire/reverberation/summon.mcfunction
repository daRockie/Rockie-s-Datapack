playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 5 1
summon armor_stand ~ ~1 ~ {Pose:{Head:[0.1f,0.1f,0.1f]},NoGravity:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["RD.sonicBoom","spawned"]}
execute as @n[type=armor_stand,tag=RD.sonicBoom] at @p run tp @s ~ ~1.5 ~ ~ ~