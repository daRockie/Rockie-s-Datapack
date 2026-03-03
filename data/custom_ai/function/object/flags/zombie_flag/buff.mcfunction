particle flame ~ ~2 ~ 0.5 0.5 0.5 0 25
particle trial_spawner_detection ~ ~2 ~ 0.5 0.5 0.5 0 25
particle firework ~ ~2 ~ 0.5 0.5 0.5 0.25 30
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie_horse.angry master @a ~ ~ ~ 1 0.5

effect give @e[type=#undead,distance=0..8] instant_damage 1 1
effect give @e[type=#undead,distance=0..8] resistance 3 0
effect give @e[type=#undead,distance=0..8] strength 3 0
effect give @e[type=#undead,distance=0..8] speed 5 1

execute at @e[distance=0..8,type=#undead] run particle trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0 25

scoreboard players add @s RD.for 1
scoreboard players reset @s ai_timer