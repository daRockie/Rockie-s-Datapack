tag @s add opening

function custom_items:custom_block/advanced_crafter/check_recipe

# クリック検知
execute unless items block ~ ~ ~ container.10 * if items entity @a player.cursor *[custom_data={TempItem:1b}] run function custom_items:custom_block/advanced_crafter/utils/change_mode

execute if items entity @a[distance=..80] container.* *[custom_data={TempItem:1b}] run clear @a *[custom_data={TempItem:1b}]

execute if items entity @a[distance=..80] player.cursor *[custom_data={TempItem:1b}] run clear @a *[custom_data={TempItem:1b}]

# クラフト結果の判定
execute if score @s isCrafting matches 1 run function custom_items:custom_block/advanced_crafter/utils/replace_panes