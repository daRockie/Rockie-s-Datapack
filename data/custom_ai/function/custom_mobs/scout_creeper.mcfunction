execute on target run tag @s add creeper.target

execute at @s if entity @e[tag=creeper.target,distance=8..25] run effect give @s invisibility 1
$execute at @s if entity @e[tag=creeper.target,distance=8..25] run particle block{block_state:{Name:"$(id)"}} ~ ~ ~ 0.5 0.5 0.5 3 10 normal @a
execute at @s if entity @e[tag=creeper.target,distance=0..8] run effect clear @s
execute at @s if entity @e[tag=creeper.target,distance=0..8] run playsound minecraft:block.note_block.pling hostile @a ~ ~ ~ 1 2

tag @n[tag=creeper.target] remove creeper.target