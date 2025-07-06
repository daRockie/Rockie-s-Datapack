# ターゲット
execute on target run tag @s add zombies.target

#execute if items entity @s[type=#zombies] weapon.mainhand fishing_rod at @s run function custom_ai:advanced_ai/zombie/item/fishing_rod/movement

execute as @s[type=drowned,tag=squid_drowned] at @s run function custom_ai:custom_mobs/squid_drowned

execute as @s[type=#zombies,tag=RD.archer_zombie] at @s run function custom_ai:custom_mobs/archer_zombie

execute if entity @s[tag=RD.boomer_zombie,tag=!ignited] at @s run function custom_ai:custom_mobs/boomer_zombie/tick

execute if entity @a[distance=0..16] run scoreboard players add @s[tag=!RD.no_chase] ai_timer 1

execute rotated ~ 0 unless block ^ ^ ^1 #custom_ai:no_collision run scoreboard players reset @s[tag=!RD.no_chase] ai_timer
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #custom_ai:no_collision run scoreboard players reset @s[tag=!RD.no_chase] ai_timer

execute if entity @e[distance=2..4.5,tag=zombies.target] if score @s[tag=!RD.no_chase] ai_timer matches 60.. run function custom_ai:advanced_ai/zombie/chase_jump
execute if entity @e[distance=2..4.5,tag=zombies.target] if score @s[tag=!RD.no_chase] ai_timer matches 60.. run scoreboard players reset @s ai_timer

execute if score @s[tag=!RD.no_chase] ai_timer matches 80.. run scoreboard players reset @s ai_timer

# タゲ外し
tag @n[tag=zombies.target] remove zombies.target