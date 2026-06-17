summon marker ~ ~ ~ {Tags:["RD.respawn"]}
data modify entity @n[type=marker,tag=RD.respawn] Pos set from entity @s respawn.pos
tp @s @n[tag=RD.respawn]
kill @e[tag=RD.respawn,type=marker]