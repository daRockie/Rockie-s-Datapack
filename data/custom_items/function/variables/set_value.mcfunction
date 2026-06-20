execute store result score @s RD.health run data get entity @s Health 1
execute store result score @s RD.flame run data get entity @s Fire 1

execute if entity @s[tag=RD.play_sound_function] run function custom_items:sound/tick

execute if entity @s[type=player] as @s at @s run function custom_items:player_tick

