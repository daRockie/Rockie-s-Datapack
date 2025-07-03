execute if score #_PROGRESSION RD.mobs.temp matches 1 run data modify entity @s CanBreakDoors set value 1b

execute at @s if entity @s[tag=!ignited] if entity @n[distance=0..5,tag=zombies.target] run tag @s add ignited
#say a
