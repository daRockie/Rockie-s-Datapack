# $say $(current_slot)
$execute if score @s RD.temp0 matches ..0 run tellraw @a [{"storage":"rockietools:custom_recipe","nbt":"list.crafter[$(curRecipe)].result.name",bold:true,color:green}]
# $tellraw @a [{"storage":"rockietools:custom_recipe","nbt":"list.crafter[$(curRecipe)].ingredient[$(current_slot)]",color:gray}]

$data modify storage rockietools:custom_recipe temp_crafter.current_ingredient set from storage rockietools:custom_recipe list.crafter[$(curRecipe)].ingredient[$(current_slot)]
$data modify storage rockietools:custom_recipe temp_crafter.current_ingredient.slot set from storage rockietools:custom_recipe meta.crafter.crafting_slot[$(current_slot)].entry

function custom_items:custom_block/advanced_crafter/utils/storage/recipes/refer/compare/macro with storage rockietools:custom_recipe temp_crafter.current_ingredient