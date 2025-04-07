scoreboard players set @s lifeTime 0
execute store result score @s spawnRandom run random value 0..100
tag @s add spawned