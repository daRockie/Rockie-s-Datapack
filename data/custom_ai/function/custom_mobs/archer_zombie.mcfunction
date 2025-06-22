execute if entity @e[tag=RD.archer_zombie.shooting] run attribute @s movement_speed base set 0
execute unless entity @s[tag=RD.archer_zombie.shooting] run attribute @s movement_speed base set 0.25

execute if entity @e[tag=zombies.target,distance=0..9] run scoreboard players set @s RD.block.calculator 80
execute if entity @e[tag=zombies.target,distance=0..9] run tag @s add RD.archer_zombie.shooting
execute unless entity @e[tag=zombies.target,distance=0..9] if score @s RD.block.calculator matches ..1 run tag @s remove RD.archer_zombie.shooting

execute if score @s RD.block.calculator matches 1.. run scoreboard players remove @s RD.block.calculator 1

execute if entity @s[tag=RD.archer_zombie.shooting] run scoreboard players add @s ai_timer 1
execute if score @s[predicate=summonmob_main:in_hostile] ai_timer matches 60.. run function custom_ai:movements/archer_zombie/shoot_bow

execute if entity @s[tag=RD.archer_zombie.shooting] run scoreboard players add @s ai_timer_tmp 1
execute if score @s ai_timer_tmp matches 20.. run scoreboard players reset @s ai_timer_tmp