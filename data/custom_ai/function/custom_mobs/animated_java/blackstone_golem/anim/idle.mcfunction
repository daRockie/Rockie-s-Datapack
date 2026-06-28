tag @s add RD.model.idle

execute as @n[tag=rd_models.blackstone_golem.root] run function rd_models:blackstone_golem/animations/idle/play

particle happy_villager ~ ~5 ~ 0.5 0.5 0.5 0.05 1

say idle

tag @s remove RD.model.walk
