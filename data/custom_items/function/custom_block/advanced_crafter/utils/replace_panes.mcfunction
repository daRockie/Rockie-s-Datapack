execute if score @s isSuccess matches 1 run return run function custom_items:custom_block/advanced_crafter/utils/item_modify/green_panes
execute if score @s isSuccess matches 0 unless items block ~ ~ ~ container.* *[!custom_data={TempItem:1b} | !custom_data] run return run function custom_items:custom_block/advanced_crafter/utils/item_modify/black_panes
