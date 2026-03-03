#tellraw @a [{"storage":"rockietools:custom_recipe", nbt:"temp_crafter.crafter[-1].ingredient",color:"dark_gray"}]

function rd_recipe:return_item with storage rockietools:custom_recipe list.crafter[-1]

# function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/refer/ with storage rockietools:custom_recipe temp_crafter.crafter[-1].ingredient


#scoreboard players set @s RD.block.calculator.temp3 $()
