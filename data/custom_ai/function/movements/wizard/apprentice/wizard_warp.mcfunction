particle minecraft:explosion ~ ~1 ~
playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 10 2
particle minecraft:trial_spawner_detection ~ ~1 ~ 0.05 0.05 0.05 0.05 10
playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 10 2
scoreboard players remove @s mana 80
effect give @s speed 1 1
execute anchored feet run tp @s ~ ~ ~ ~ 0
execute anchored feet run tp @s ^ ^ ^-4 ~ 0