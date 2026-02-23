scoreboard players set @s RD.custom_block.CALC_0 0

function custom_items:custom_block/advanced_crafter/utils/storage/recipes/fill/get_recipe with storage rockietools:custom_recipe temp_crafter.meta

# レシピ取得、アイテムデータを返却
function custom_items:custom_block/advanced_crafter/utils/storage/recipes/refer/set_item with storage rockietools:custom_recipe temp_crafter.meta

tellraw @a [{"text":"処理終了"},{"text":"レシピID: ",extra:[{"score":{"name":"@s",objective:"RD.recipe_id"}}]}]