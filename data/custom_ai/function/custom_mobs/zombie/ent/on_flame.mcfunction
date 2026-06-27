particle lava ~ ~1 ~ 0.5 0.5 0.5 0.05 1
damage @s 2 in_fire

execute if predicate {condition:"random_chance",chance:0.01} run loot spawn ~ ~1 ~ loot custom_ai:monster/zombie/ent/oak

execute if entity @s[tag=!RD.runaway_inited] run function custom_ai:movements/runaway/init