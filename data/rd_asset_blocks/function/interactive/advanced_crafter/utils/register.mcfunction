# 今までの処理重すぎん？
execute store result entity @s brightness.block int 1 run function rd_asset_blocks:get_brightness
execute store result entity @s brightness.sky int 1 run function rd_asset_blocks:get_brightness

# execute positioned ~ ~1 ~ if predicate custom_items:can_see_sky run data modify entity @n[type=block_display] brightness.sky set value 14
# execute positioned ~ ~1 ~ unless predicate custom_items:can_see_sky run data modify entity @n[type=block_display] brightness.sky set value 1

#data modify entity @s CustomNameVisible set value 1b
#$data modify entity @s CustomName set value [{"text":"明るさ： ","color":"yellow","bold":1b},{"storage":"rockietools:custom_crafter","nbt":'data."$(UUID)".current_brightness',"color":"white","bold":0b}]

# アイテムの定義
execute if block ~ ~ ~ barrel[open=true,facing=up] run function rd_asset_blocks:interactive/advanced_crafter/utils/counting_item