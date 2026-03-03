# アイテムのスロットが適用されるエリアは
# -------------
# 3,  4,  5
# 12, 13, 14
# 21, 22, 23
# -------------
# 次IDとなるレシピが存在する場合は次に来るレシピIDの確認関数を呼び出し、存在しない場合は-1を返す

#say checking recipe: GRIMOIRE

execute \
unless items block ~ ~ ~ container.3 * \
if items block ~ ~ ~ container.4 emerald[custom_data~{CustomItem:"RD.peridot"}] \
unless items block ~ ~ ~ container.5 * \
if items block ~ ~ ~ container.12 emerald[custom_data~{CustomItem:"RD.peridot"}] \
if items block ~ ~ ~ container.13 book \
if items block ~ ~ ~ container.14 emerald[custom_data~{CustomItem:"RD.peridot"}] \
unless items block ~ ~ ~ container.21 * \
if items block ~ ~ ~ container.22 emerald[custom_data~{CustomItem:"RD.peridot"}] \
unless items block ~ ~ ~ container.23 * run return 3
#say RECIPE IS WRONG! RETURN NEXT RECIPE
return run function custom_items:custom_block/advanced_crafter/recipe_data/grimoire/reverberation