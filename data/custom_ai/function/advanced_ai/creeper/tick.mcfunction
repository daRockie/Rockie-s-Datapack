execute if entity @s[predicate=summonmob_main:in_hostile,tag=RD.scout_creeper] run function custom_ai:custom_mobs/scout_creeper with entity @s equipment.head
execute at @s[tag=RD.scout_creeper] run particle dust{color:[0,10,0],scale:1} ~ ~1 ~ 0.25 0.5 0.25 0 1

execute if entity @s[predicate=summonmob_main:in_hostile,tag=!nuka_c] run function custom_ai:advanced_ai/creeper/moveset