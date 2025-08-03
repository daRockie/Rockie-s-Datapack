execute at @s run scoreboard players set $strength hb.Motion 30000
execute at @s run tp @s ~ ~ ~
execute at @s run function p_motion:main/looking

playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 5 2
particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.05 15
advancement revoke @s only custom_items:item_used/food/digested_kelp