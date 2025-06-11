# ターゲット
execute on target run tag @s add zombies.target

execute if entity @a[distance=0..16] run scoreboard players add @s[tag=!RD.no_chase] ai_timer 1

execute rotated ~ 0 unless block ^ ^ ^1 #custom_ai:no_collision run scoreboard players reset @s[tag=!RD.no_chase] ai_timer
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #custom_ai:no_collision run scoreboard players reset @s ai_timer

execute if entity @a[distance=3..4.5,tag=zombies.target] if score @s[tag=!RD.no_chase] ai_timer matches 60.. run function custom_ai:movements/chase_jump
execute if entity @a[distance=3..4.5,tag=zombies.target] if score @s[tag=!RD.no_chase] ai_timer matches 60.. run scoreboard players reset @s ai_timer

execute at @s[nbt={OnGround:1b},tag=scout_z] if entity @e[tag=zombies.target,distance=4..5] run function custom_ai:movements/chase_jump

# タゲ外し
tag @n[tag=zombies.target] remove zombies.target