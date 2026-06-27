#say a

execute if entity @n[tag=creeper.target,distance=0..8,tag=!RD.void_bellwether.attack_beam.charged] run scoreboard players add @s RD.ai_timer 1

execute if entity @s[tag=RD.void_bellwether.attack_beam.charged] run scoreboard players add @s RD.ai_timer 1


execute if score @s RD.ai_timer matches 30 run function custom_ai:custom_mobs/void/bellwether/attacks/beam/first_charge

execute if score @s RD.ai_timer matches 60 run function custom_ai:custom_mobs/void/bellwether/attacks/beam/second_charge

execute if score @s RD.ai_timer matches 100 run function custom_ai:custom_mobs/void/bellwether/attacks/beam/last_charge

execute if score @s RD.ai_timer matches 100..221 run function custom_ai:custom_mobs/void/bellwether/attacks/beam/charged

execute if score @s RD.ai_timer matches 120 run playsound entity.enderman.teleport hostile @a ~ ~ ~ 3 1

execute if score @s RD.ai_timer matches 140 run playsound entity.enderman.teleport hostile @a ~ ~ ~ 3 1.2

execute if score @s RD.ai_timer matches 160 run playsound entity.enderman.teleport hostile @a ~ ~ ~ 3 1.7

execute if score @s RD.ai_timer matches 220.. run function custom_ai:custom_mobs/void/bellwether/attacks/beam/shoot_sound

execute if score @s RD.ai_timer matches 220.. run function custom_ai:custom_mobs/void/bellwether/attacks/beam/shoot
