# リストの最後の要素
data remove storage rockietools:custom_recipe temp_crafter.list[-1]

# マクロを再実行
execute if data storage rockietools:custom_recipe temp_crafter.list[-1] run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/refer/

# --- リストが空になってからの処理 ---

execute if score @s RD._BOOLEAN matches 1.. run return run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/refer/break with storage rockietools:custom_recipe temp_crafter.meta

# スコアボードを利用して参照するレシピ番号を取得
scoreboard players add @s RD.recipe_id 1
execute store result storage rockietools:custom_recipe temp_crafter.meta.curRecipe int 1 run scoreboard players get @s RD.recipe_id

# アイテム比較のinit処理
function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/refer/compare/init with storage rockietools:custom_recipe temp_crafter.meta