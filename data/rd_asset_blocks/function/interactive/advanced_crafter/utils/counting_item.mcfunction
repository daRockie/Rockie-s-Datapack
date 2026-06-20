tag @s add opening

execute if score @s RD.isCrafting matches 2 run function rd_asset_blocks:interactive/advanced_crafter/recipe_viewer/main

execute if score @s RD.isCrafting matches 1 run function rd_asset_blocks:interactive/advanced_crafter/check_recipe

execute if score @s RD.isCrafting matches 0 run function rd_asset_blocks:interactive/advanced_crafter/utils/recipe_mode

# クリック検知

# execute if items entity @a[distance=..80] container.* *[custom_data={TempItem:1b}] run clear @a *[custom_data={TempItem:1b}]

# execute if items entity @a[distance=..80] player.cursor *[custom_data={TempItem:1b}] run clear @a *[custom_data={TempItem:1b}]

# クラフト結果の判定
execute if score @s RD.isCrafting matches 1 run function rd_asset_blocks:interactive/advanced_crafter/utils/replace_panes

