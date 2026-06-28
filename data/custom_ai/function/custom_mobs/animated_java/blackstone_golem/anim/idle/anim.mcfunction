tag @s add RD.model.idle

# say walk

execute if entity @s[tag=RD.model.walk] as @n[tag=rd_models.blackstone_golem.root] run function custom_ai:custom_mobs/animated_java/blackstone_golem/anim/walk/walk_stop

execute as @n[tag=rd_models.blackstone_golem.root] run function rd_models:blackstone_golem/animations/idle/play

# particle happy_villager ~ ~5 ~ 0.5 0.5 0.5 0.05 1

# say idle

