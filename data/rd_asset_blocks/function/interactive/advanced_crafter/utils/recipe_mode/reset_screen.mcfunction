execute as @e[type=item,distance=0..10] as @s if data entity @s Item.components."minecraft:custom_data".TempItem run kill @s

execute unless score @s RD.isCrafting matches 1 run return run function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_recipe_mode

function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_craft_mode