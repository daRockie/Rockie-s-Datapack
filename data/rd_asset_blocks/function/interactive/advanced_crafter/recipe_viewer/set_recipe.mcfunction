item replace block ~ ~ ~ container.16 from entity @s weapon.mainhand

item modify entity @s weapon.mainhand rd_asset_blocks:set_air_model

playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 1

function rd_asset_blocks:interactive/advanced_crafter/recipe_viewer/get_loottable with entity @s equipment.mainhand.components."minecraft:custom_name"

execute unless data entity @s equipment.mainhand.components."minecraft:custom_data".loot_table run return run function rd_asset_blocks:interactive/advanced_crafter/utils/change_mode
function rd_asset_blocks:interactive/advanced_crafter/recipe_viewer/fill_recipe with entity @s equipment.mainhand.components."minecraft:custom_data"

