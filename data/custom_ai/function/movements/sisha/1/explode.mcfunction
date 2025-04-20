particle witch ~ ~2 ~ 1 1 1 0.5 5
particle explosion ~ ~2 ~ 0.05 0.05 0.05 0.25 1
playsound entity.generic.explode hostile @a ~ ~ ~ 10 2
playsound entity.enderman.teleport hostile @a ~ ~ ~ 5 2
execute at @s as @e[type=!enderman,distance=0..8] run damage @s 8 explosion at ~ ~ ~
scoreboard players set @s ai_timer 0