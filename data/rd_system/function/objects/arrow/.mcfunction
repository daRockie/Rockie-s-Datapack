data modify entity @s Motion set from entity @n[tag=RD.center_motion,type=marker] Pos
kill @e[type=marker,tag=RD.center_motion]
tag @s[tag=RD.shortbow_arrow] remove RD.shortbow_arrow

execute if entity @s[tag=RD.randomAngle] run function custom_items:items/shortbow/recoil with entity @s {}
