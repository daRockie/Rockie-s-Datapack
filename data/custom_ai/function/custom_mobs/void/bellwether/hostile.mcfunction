execute if predicate {condition:"random_chance",chance:0.01} run playsound entity.enderman.scream hostile @a ~ ~ ~ 1 0.7

scoreboard players add @s RD.ai_timer 1

execute if score @s RD.ai_timer matches 40.. run function custom_ai:custom_mobs/void/bellwether/portal