execute if entity @s[predicate=summonmob_main:in_hostile,tag=speed_crp] run function custom_ai:custom_mobs/scout_creeper with entity @s equipment.head
execute at @s[tag=speed_crp] run particle trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0 1 normal @a

execute if entity @s[predicate=summonmob_main:in_hostile] run function custom_ai:advanced_ai/creeper/moveset