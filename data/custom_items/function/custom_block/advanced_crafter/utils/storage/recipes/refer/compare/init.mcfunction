# algorhythm: 
# レシピの長さを取得 (以降、iと呼称)
# n番目のスロットのアイテムデータを取得、n番目のレシピスロットと照合（0~8, 9回繰り返す）
# 最後まで0が返ってこなかったら成功判定を出力

# レシピの長さの下りはfiller上で確認済み


# スロットについてのメタデータ書き込み
data modify storage rockietools:custom_recipe temp_crafter.meta.crafting_slot set from storage rockietools:custom_recipe meta.crafter.crafting_slot
# $say レシピ番号: $(curRecipe)

# 繰り返し処理開始
function custom_items:custom_block/advanced_crafter/utils/storage/recipes/refer/compare/ with storage rockietools:custom_recipe temp_crafter.meta
scoreboard players set @s RD.temp0 0
