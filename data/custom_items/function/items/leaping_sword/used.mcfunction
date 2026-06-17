
particle cloud ~ ~ ~ 0.5 0 0.5 0.05 10

playsound entity.spider.ambient player @a ~ ~ ~ 0.5 0.5

playsound entity.bat.takeoff player @a ~ ~ ~ 1 0.5
playsound entity.goat.long_jump player @a ~ ~ ~ 1 2

playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 2

# X/Y/Z
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 7000
scoreboard players set $z player_motion.api.launch 0

scoreboard players set $strength player_motion.api.launch 10000

effect give @s slow_falling 1 0

function player_motion:api/launch_looking

function player_motion:api/launch_xyz