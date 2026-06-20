execute unless items block ~ ~ ~ container.10 * if score @s RD.isCrafting matches 2 if items entity @a player.cursor *[custom_data={TempItem:1b}] run function rd_asset_blocks:interactive/advanced_crafter/utils/change_mode

execute if items block ~ ~ ~ container.9 *[custom_data~{TempItem:1b}] if items entity @a player.cursor *[custom_data~{TempItem:1b} | !custom_data~{Ingredient:1b}] run function rd_asset_blocks:interactive/advanced_crafter/utils/recipe_mode/show_recipe

execute if entity @e[type=item,distance=..10] run function rd_asset_blocks:interactive/advanced_crafter/utils/recipe_mode/reset_screen

clear @a *[custom_data~{TempItem:1b}]