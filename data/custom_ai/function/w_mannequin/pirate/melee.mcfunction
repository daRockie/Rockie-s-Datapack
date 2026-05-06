scoreboard players reset @s ai_timer

execute unless entity @n[distance=..2.5,tag=RD.pirate.target,type=!#minecraft:unliving_objects] run return fail

# $say $(damage)
# $say $(damage_type)
swing @n[type=mannequin] mainhand
$damage @n[distance=0.05..3,tag=RD.pirate.target,type=!#minecraft:unliving_objects] $(damage) $(damage_type) by @s