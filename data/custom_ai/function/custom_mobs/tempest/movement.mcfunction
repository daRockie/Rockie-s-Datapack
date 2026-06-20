execute on target run tag @s add silverfish.target

execute if entity @n[tag=silverfish.target,distance=0..10] run scoreboard players add @s RD.ai_timer 1

execute if entity @n[tag=silverfish.target,nbt={HurtTime:8s}] run function custom_ai:movements/venomous/drain

tag @n[tag=silverfish.target] remove silverfish.target