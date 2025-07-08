execute on target run tag @s add zombies.target

scoreboard players add @s ai_timer 1
#tellraw @a [{"text":"My bomb timer: "},{"score":{"name":"@s","objective":"ai_timer"}}]
execute if entity @s[tag=!RD.boomer_zombie.on_fire] run function custom_ai:custom_mobs/boomer_zombie/set_fire

particle minecraft:large_smoke ~ ~1.75 ~ 0.05 0 0.05 0 2 normal
execute if score @s ai_timer matches 50.. run effect give @s speed 2 0 false
execute if score @s ai_timer matches 70 facing entity @n[tag=zombies.target] eyes run function custom_ai:custom_mobs/boomer_zombie/jump_forward
# execute at @s if entity @e[type=zombie,nbt={Tags:["proceed","spawned","RD.boomer_zombie","ignited"],OnGround:1b},distance=0.2..] run function custom_ai:step_away
execute if score @s[nbt={OnGround:1b}] ai_timer matches 80.. run function custom_ai:movements/boomer_zombie/kill_and_boom
execute if block ~ ~ ~ water run function custom_ai:movements/boomer_zombie/kill_and_boom

tag @n[tag=zombies.target] remove zombies.target