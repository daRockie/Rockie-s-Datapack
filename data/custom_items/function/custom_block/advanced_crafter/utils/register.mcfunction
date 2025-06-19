# レジスタ
$execute unless data storage rockietools:custom_crafter data."$(UUID)" run \
data modify storage rockietools:custom_crafter data append value "$(UUID)"

$execute unless data storage rockietools:custom_crafter data."$(UUID)".slots run \
data modify storage rockietools:custom_crafter data."$(UUID)".slots set value [0,0,0,0,0,0,0,0,0]

$execute unless data storage rockietools:custom_crafter data."$(UUID)".cost run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [0,0,0,0,0,0,0,0,0]

#$data modify entity @s CustomName set from storage rockietools:custom_crafter.$(UUID)."current_brightness"

# 明るさの定義
$execute store result storage rockietools:custom_crafter data."$(UUID)".current_brightness int 1 run function custom_items:custom_block/advanced_crafter/utils/get_brightness
$execute store result entity @n[type=block_display,distance=..0.5] brightness.block int 1 run data get storage rockietools:custom_crafter data."$(UUID)".current_brightness 1

execute positioned ~ ~1 ~ if predicate custom_items:can_see_sky run data modify entity @n[type=block_display] brightness.sky set value 14
execute positioned ~ ~1 ~ unless predicate custom_items:can_see_sky run data modify entity @n[type=block_display] brightness.sky set value 1

#data modify entity @s CustomNameVisible set value 1b
#$data modify entity @s CustomName set value [{"text":"明るさ： ","color":"yellow","bold":1b},{"storage":"rockietools:custom_crafter","nbt":'data."$(UUID)".current_brightness',"color":"white","bold":0b}]

# アイテムの定義
execute if block ~ ~ ~ barrel[open=true,facing=up] run function custom_items:custom_block/advanced_crafter/utils/counting_item with entity @s {}