# ぐるぐる！！！！！ぐるぐる！！！！！！アッー！！！！！！！！！！！！！
scoreboard players add @s ai_timer 20
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ai_timer
particle ash ~ ~2 ~ 0.5 0.5 0.5 0.05 2
particle soul_fire_flame ^ ^ ^2 0 0 0 0 5
particle soul_fire_flame ^ ^ ^-2 0 0 0 0 5