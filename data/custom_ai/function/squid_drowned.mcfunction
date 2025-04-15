execute at @s if entity @e[tag=zombies_target,distance=8..20] run scoreboard players add @s ai_timer 1
execute if score @s ai_timer matches 40 at @s anchored eyes if block ~ ~1 ~ water run function custom_ai:squid_swim
execute if score @s ai_timer matches 40.. run scoreboard players set @s ai_timer 0