execute on target run tag @s add creeper.target

execute if entity @a[distance=0..4,tag=creeper.target] run data modify entity @s ignited set value 1b
execute if entity @a[distance=0..4,tag=creeper.target] run data modify entity @s NoAI set value 1b

tag @n[tag=creeper.target] remove creeper.target