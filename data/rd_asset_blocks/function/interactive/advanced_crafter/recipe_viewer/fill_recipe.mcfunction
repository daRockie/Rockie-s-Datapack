# $say $(loot_table)

# 
playsound minecraft:item.book.page_turn block @a ~ ~ ~ 1 1

# temp削除
data remove storage rockietools:custom_crafter temp_crafter
data remove storage rockietools:custom_crafter temp_crafter.meta
data remove storage rockietools:custom_recipe list.crafter[{result:{name:"Temp"}}]

$data modify storage rockietools:custom_recipe temp_crafter.list set from storage rockietools:custom_recipe list.crafter[{result:{table:"$(loot_table)"}}]
data modify storage rockietools:custom_recipe temp_crafter.meta set from storage rockietools:custom_recipe meta
# data remove storage rockietools:custom_recipe temp_crafter.list[0]

function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/place/init