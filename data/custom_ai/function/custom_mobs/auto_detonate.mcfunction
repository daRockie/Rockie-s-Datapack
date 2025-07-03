
execute if entity @s if block ^ ^ ^1 #doors positioned ^ ^ ^3 if entity @e[type=#custom_ai:inhostile,distance=0..1.5] run function custom_ai:movements/boomer_zombie/kill_and_boom
execute if block ~ ~ ~ water run function custom_ai:movements/boomer_zombie/kill_and_boom