scoreboard players add @s[tag=!RD.void_bellwether.attack_prepared] RD.ai_timer 1

execute on target run tag @s add creeper.target

execute if predicate {condition:"random_chance",chance:0.01} run playsound entity.enderman.scream hostile @a ~ ~ ~ 1 0.7

execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s RD.ai_timer_2 70

execute if score @s RD.ai_timer_2 matches 240.. run function custom_ai:custom_mobs/void/bellwether/attacks/run

execute if score @s[tag=!RD.void_bellwether.attack_prepared] RD.ai_timer matches 60.. run function custom_ai:custom_mobs/void/bellwether/attack_prepare

execute if entity @n[tag=creeper.target] run function custom_ai:custom_mobs/void/bellwether/attacks/attack_move

tag @n[tag=creeper.target] remove creeper.target