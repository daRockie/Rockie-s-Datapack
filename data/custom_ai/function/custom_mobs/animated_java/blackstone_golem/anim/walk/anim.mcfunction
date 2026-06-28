# say walk

execute if entity @s[tag=RD.model.idle] as @n[tag=rd_models.blackstone_golem.root] run function custom_ai:custom_mobs/animated_java/blackstone_golem/anim/idle/idle_stop

execute as @n[tag=rd_models.blackstone_golem.root] run function rd_models:blackstone_golem/animations/walk/play

tag @s add RD.model.walk

# particle angry_villager ~ ~5 ~ 0.5 0.5 0.5 0.05 1

