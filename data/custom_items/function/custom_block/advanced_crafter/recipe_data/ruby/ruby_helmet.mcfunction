# アイテムのスロットが適用されるエリアは
# -------------
# 3,  4,  5
# 12, 13, 14
# 21, 22, 23
# -------------
# 次IDとなるレシピが存在する場合は次に来るレシピIDの確認関数を呼び出し、存在しない場合は-1を返す

#say checking recipe: WIZARD'S ROBE

execute \
if items block ~ ~ ~ container.3 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
if items block ~ ~ ~ container.4 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
if items block ~ ~ ~ container.5 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
if items block ~ ~ ~ container.12 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
unless items block ~ ~ ~ container.13 * \
if items block ~ ~ ~ container.14 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
unless items block ~ ~ ~ container.21 * \
unless items block ~ ~ ~ container.22 * \
unless items block ~ ~ ~ container.23 * run return 8
#say RECIPE IS WRONG! RETURN NEXT RECIPE
return run function custom_items:custom_block/advanced_crafter/recipe_data/wizard_apprentice/chestplate