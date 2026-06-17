#$say $(recipe_data), $(entry)
$function rd_recipe:return_item {table:"$(recipe_data)", place:"container.$(entry)", args:"block ~ ~ ~"}
$item modify block ~ ~ ~ container.$(entry) rd_asset_blocks:set_tempitem
execute store result storage rockietools:custom_recipe temp_crafter.slot int 1 run data get storage rockietools:custom_recipe temp_crafter.meta.entry
# data remove storage rockietools:custom_recipe temp_crafter