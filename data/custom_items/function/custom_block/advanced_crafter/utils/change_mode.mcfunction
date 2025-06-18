clear @a *[custom_data={TempItem:1b}]
playsound minecraft:ui.button.click master @a ~ ~ ~ 0.5 2
#say ERROR!
execute if score @s isCrafting matches 1 if items block ~ ~ ~ container.* *[!custom_data={TempItem:1b} | !custom_data] run return run function custom_items:custom_block/advanced_crafter/utils/change_mode_error
#say NOT ERROR, PROCEED
execute if score @s isCrafting matches 1 unless items block ~ ~ ~ container.* *[!custom_data={TempItem:1b} | !custom_data] run return run function custom_items:custom_block/advanced_crafter/utils/item_modify/fill_blank_recipe_mode
#say END
execute if score @s isCrafting matches 0 run return run function custom_items:custom_block/advanced_crafter/utils/item_modify/fill_blank_craft_mode