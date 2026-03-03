#$say $(recipe_data), $(entry)
$function rd_recipe:return_item {table:"$(recipe_data)", place:"container.$(entry)", args:"block ~ ~ ~"}
execute store result storage rockietools:custom_recipe temp_crafter.slot int 1 run data get storage rockietools:custom_recipe temp_crafter.meta.entry
function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/give_tempitem with storage rockietools:custom_recipe temp_crafter.meta
# data remove storage rockietools:custom_recipe temp_crafter