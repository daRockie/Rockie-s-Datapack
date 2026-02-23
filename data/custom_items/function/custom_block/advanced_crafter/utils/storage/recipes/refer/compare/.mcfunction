execute if score @s RD.temp0 matches -2147483648..2147483647 run scoreboard players set @s RD.temp0 0

# リストの最後の要素
data remove storage rockietools:custom_recipe temp_crafter.meta.crafting_slot[-1]

# マクロを再実行
execute if data storage rockietools:custom_recipe temp_crafter.meta.crafting_slot[-1] run function custom_items:custom_block/advanced_crafter/utils/storage/recipes/refer/compare/ with storage rockietools:custom_recipe temp_crafter.meta

# --- リストが空になってからの処理 ---

# スコアボードを利用して参照するスロット番号を取得
execute store result storage rockietools:custom_recipe temp_crafter.meta.current_slot int 1 run scoreboard players get @s RD.temp0
# $say $(current_slot)


# メタデータが保持している情報: スロット番号、レシピ番号
function custom_items:custom_block/advanced_crafter/utils/storage/recipes/refer/compare/slot_long_loop with storage rockietools:custom_recipe temp_crafter.meta
scoreboard players add @s RD.temp0 1
