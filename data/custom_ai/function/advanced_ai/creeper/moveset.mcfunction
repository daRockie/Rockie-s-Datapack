execute on target run tag @s add creeper.target

execute if entity @s[tag=RD.void_bellwether] run function custom_ai:custom_mobs/void/bellwether/hostile

tag @n[tag=creeper.target] remove creeper.target