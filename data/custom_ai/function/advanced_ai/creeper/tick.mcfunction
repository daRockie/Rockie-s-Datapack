execute if entity @s[predicate=summonmob_main:in_hostile,tag=speed_crp] run function custom_ai:custom_mobs/scout_creeper with entity @s equipment.head

execute if entity @s[predicate=summonmob_main:in_hostile] run function custom_ai:advanced_ai/creeper/moveset