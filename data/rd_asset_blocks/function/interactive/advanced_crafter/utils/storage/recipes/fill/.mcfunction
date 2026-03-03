# リストの最後の要素
data remove storage rockietools:custom_recipe temp_crafter.meta.crafter.allowed_slot[-1]

# マクロを再実行
execute if data storage rockietools:custom_recipe temp_crafter.meta.crafter.allowed_slot[-1] run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/ with storage rockietools:custom_recipe temp_crafter.meta.crafter.allowed_slot[-1]
# $tellraw @a [{"text":"$(entry)"}]

# --- リストが空になってからの処理 ---

# エントリーを設定
$data modify storage rockietools:custom_recipe temp_crafter.meta.entry set value $(entry)
# $say $(entry)

# スコアボードを利用して参照するレシピ番号を取得
scoreboard players add @s RD.block.calculator.temp3 1
execute store result storage rockietools:custom_recipe temp_crafter.meta.curRecipe int 1 run scoreboard players get @s RD.block.calculator.temp3
function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/get_recipe with storage rockietools:custom_recipe temp_crafter.meta

# レシピ取得、アイテムデータを返却
function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/fill/final with storage rockietools:custom_recipe temp_crafter.meta