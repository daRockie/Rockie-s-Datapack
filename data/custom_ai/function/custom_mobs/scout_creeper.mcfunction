execute at @s if entity @e[tag=crep_target,distance=8..25] run effect give @s invisibility 1
execute at @s if entity @e[tag=crep_target,distance=8..25] run particle block{block_state:{Name:"minecraft:dirt"}} ~ ~ ~ 0.05 0.05 0.05 1.5 10 normal @a
execute at @s if entity @e[tag=crep_target,distance=0..8] run effect clear @s
execute at @s if entity @e[tag=crep_target,distance=0..8] run playsound minecraft:block.note_block.pling hostile @a ~ ~ ~ 1 2
execute at @s run particle trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0 1 normal @a