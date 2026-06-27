
execute if score @s RD.SND.timer matches 0 run function custom_items:sound/eat_sound/particle_apple {"pitch":1.7}

scoreboard players add @s RD.SND.timer 1

execute if score @s RD.SND.timer matches 2 run function custom_items:sound/eat_sound/particle_apple {"pitch":1}

execute if score @s RD.SND.timer matches 4 run function custom_items:sound/eat_sound/particle_apple {"pitch":0.2}

execute if score @s RD.SND.timer matches 4.. run tag @s remove SND.healing
execute if score @s RD.SND.timer matches 4.. run function custom_items:sound/replay

