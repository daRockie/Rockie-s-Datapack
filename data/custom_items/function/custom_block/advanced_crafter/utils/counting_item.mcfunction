tag @s add opening

function custom_items:custom_block/advanced_crafter/check_recipe

# クリック検知
execute unless items block ~ ~ ~ container.10 * if score @s RD.isCrafting matches 1 if items entity @a player.cursor *[custom_data={TempItem:1b}] run function custom_items:custom_block/advanced_crafter/utils/change_mode

execute unless items block ~ ~ ~ container.9 * if score @s RD.isCrafting matches 0 if items entity @a player.cursor *[custom_data={TempItem:1b}] run function custom_items:custom_block/advanced_crafter/utils/change_mode

execute if items entity @a[distance=..80] container.* *[custom_data={TempItem:1b}] run clear @a *[custom_data={TempItem:1b}]

execute if items entity @a[distance=..80] player.cursor *[custom_data={TempItem:1b}] run clear @a *[custom_data={TempItem:1b}]

# クラフト結果の判定
execute if score @s RD.isCrafting matches 1 run function custom_items:custom_block/advanced_crafter/utils/replace_panes

# アイテム数の代入
$execute store result storage rockietools:custom_crafter data."$(UUID)".slots[0] int 1 run data get block ~ ~ ~ Items[{Slot:3b}].count

$execute store result storage rockietools:custom_crafter data."$(UUID)".slots[1] int 1 run data get block ~ ~ ~ Items[{Slot:4b}].count

$execute store result storage rockietools:custom_crafter data."$(UUID)".slots[2] int 1 run data get block ~ ~ ~ Items[{Slot:5b}].count

$execute store result storage rockietools:custom_crafter data."$(UUID)".slots[3] int 1 run data get block ~ ~ ~ Items[{Slot:12b}].count

$execute store result storage rockietools:custom_crafter data."$(UUID)".slots[4] int 1 run data get block ~ ~ ~ Items[{Slot:13b}].count

$execute store result storage rockietools:custom_crafter data."$(UUID)".slots[5] int 1 run data get block ~ ~ ~ Items[{Slot:14b}].count

$execute store result storage rockietools:custom_crafter data."$(UUID)".slots[6] int 1 run data get block ~ ~ ~ Items[{Slot:21b}].count

$execute store result storage rockietools:custom_crafter data."$(UUID)".slots[7] int 1 run data get block ~ ~ ~ Items[{Slot:22b}].count

$execute store result storage rockietools:custom_crafter data."$(UUID)".slots[8] int 1 run data get block ~ ~ ~ Items[{Slot:23b}].count
