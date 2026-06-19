execute if entity @s[predicate=rd_asset_mobs:in_hostile] run function custom_ai:advanced_ai/enderman/moveset

execute if entity @s[tag=elite_eman,name="最果ての地からのシ者"] at @s run function custom_ai:custom_mobs/messenger/0_particle

execute if entity @s[tag=RD.has_head_entity,predicate=!rd_asset_mobs:in_hostile] run function custom_ai:advanced_ai/enderman/head_offset {"offset":"0.25"}