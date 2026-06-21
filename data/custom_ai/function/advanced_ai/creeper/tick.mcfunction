execute if entity @s[predicate=rd_asset_mobs:in_hostile,tag=RD.scout_creeper] run function custom_ai:custom_mobs/scout_creeper with entity @s equipment.head
execute if entity @s[tag=RD.scout_creeper] run particle dust{color:[0,1,0],scale:1} ~ ~1 ~ 0.25 0.5 0.25 0 1

loot replace entity @s[tag=RD.scout_creeper] armor.head mine ~ ~-1 ~ minecraft:netherite_pickaxe[enchantments={silk_touch:1},custom_data={"getID":true}]

execute if entity @s[tag=RD.parachute_creeper] run function custom_ai:custom_mobs/parachute_creeper

execute if entity @s[tag=RD.void_bellwether] run function custom_ai:custom_mobs/void/bellwether/tick

execute if entity @s[tag=RD.has_head_entity] run function custom_ai:advanced_ai/creeper/head_offset

execute if entity @s[tag=RD.with_mannequin] run function custom_ai:w_mannequin/tick

execute if entity @s[predicate=rd_asset_mobs:in_hostile,tag=!nuka_c,tag=!RD.parachute_creeper] run function custom_ai:advanced_ai/creeper/moveset