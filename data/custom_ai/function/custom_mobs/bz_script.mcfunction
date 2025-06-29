scoreboard players add @s ai_timer 1
#tellraw @a [{"text":"My bomb timer: "},{"score":{"name":"@s","objective":"ai_timer"}}]

execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.05 0 0.05 0 2 normal
execute at @s if score @s ai_timer matches 1 run playsound minecraft:item.flintandsteel.use hostile @a ~ ~ ~ 20 0.5
execute at @s if score @s ai_timer matches 1 run playsound minecraft:entity.tnt.primed hostile @a ~ ~ ~ 10 1
execute if score @s ai_timer matches 50.. run effect give @s speed 2 1
# execute at @s if entity @e[type=zombie,nbt={Tags:["proceed","spawned","RD.boomer_zombie","ignited"],OnGround:1b},distance=0.2..] run function custom_ai:step_away
execute at @s if score @s ai_timer matches 80.. run function custom_ai:movements/boomer_zombie/kill_and_boom
execute at @s if block ~ ~ ~ water run function custom_ai:movements/boomer_zombie/kill_and_boom