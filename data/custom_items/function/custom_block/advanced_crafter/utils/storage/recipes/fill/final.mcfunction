#$say $(recipe_data), $(entry)
$function recipe:return_item {table:"$(recipe_data)", place:"container.$(entry)", args:"block ~ ~ ~"}
execute store result storage rockietools:custom_recipe temp_crafter.slot int 1 run data get storage rockietools:custom_recipe temp_crafter.meta.entry
function custom_items:custom_block/advanced_crafter/utils/storage/recipes/fill/give_tempitem with storage rockietools:custom_recipe temp_crafter.meta
# data remove storage rockietools:custom_recipe temp_crafter