# temp削除
data remove storage rockietools:custom_crafter temp_crafter

# temp設定
data modify storage rockietools:custom_recipe temp_crafter set from storage rockietools:custom_recipe list

function custom_items:custom_block/advanced_crafter/utils/storage/recipes/loop_backward with storage rockietools:custom_recipe temp_crafter