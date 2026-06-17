
data modify entity @s Motion set from entity @n[tag=RD.center_motion,type=marker] Pos
tag @s[tag=RD.set_motion] remove RD.set_motion

kill @e[type=marker,tag=RD.center_motion]