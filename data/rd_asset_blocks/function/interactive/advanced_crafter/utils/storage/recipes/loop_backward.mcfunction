tellraw @a [{"text":"Currently Searching: ",italic: false,"color":"gray"},{"storage":"rockietools:custom_recipe",nbt:"temp_crafter.crafter[-1].result.name","color":"green"}]
function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/refer_to_recipe with storage rockietools:custom_recipe temp_crafter.crafter[-1]
data modify storage rockietools:custom_recipe temp_crafter.recipe_temp set from storage rockietools:custom_recipe temp_crafter.crafting[-1]

data remove storage rockietools:custom_recipe temp_crafter.crafter[-1]

execute if data storage rockietools:custom_recipe temp_crafter.crafter[-1] run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/loop_backward with storage rockietools:custom_recipe temp_crafter