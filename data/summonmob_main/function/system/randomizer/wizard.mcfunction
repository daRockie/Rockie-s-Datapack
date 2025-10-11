execute store result score @s spawnRandom run random value 1..100

execute if score @s spawnRandom matches 1..30 run function summonmob_main:summon/wizard/amature
execute if score @s spawnRandom matches 31..60 run function summonmob_main:summon/wizard/apprentice