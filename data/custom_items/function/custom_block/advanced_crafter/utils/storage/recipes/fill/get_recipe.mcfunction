#$say $(curRecipe)
$execute unless data storage rockietools:custom_recipe list.crafter[$(curRecipe)] run data modify storage rockietools:custom_recipe temp_crafter.meta.recipe_data set value "rd_recipe:air"
$data modify storage rockietools:custom_recipe temp_crafter.meta.recipe_data set from storage rockietools:custom_recipe list.crafter[$(curRecipe)].result.table