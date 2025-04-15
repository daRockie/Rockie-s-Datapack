effect give @s speed 10 1
effect give @s resistance 5 0
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 1
execute unless predicate useful-functions:healing_campfire run function useful-functions:do_campfire_op