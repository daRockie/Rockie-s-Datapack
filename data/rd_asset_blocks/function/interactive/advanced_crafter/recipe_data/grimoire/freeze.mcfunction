# アイテムのスロットが適用されるエリアは
# -------------
# 3,  4,  5
# 12, 13, 14
# 21, 22, 23
# -------------
# 次IDとなるレシピが存在する場合は次に来るレシピIDの確認関数を呼び出し、存在しない場合は-1を返す

#say checking recipe: RUBY LEGGINGS

execute \
unless items block ~ ~ ~ container.3 * \
if items block ~ ~ ~ container.4 heart_of_the_sea[custom_data~{CustomItem:"RD.subzero"}] \
unless items block ~ ~ ~ container.5 * \
if items block ~ ~ ~ container.12 heart_of_the_sea[custom_data~{CustomItem:"RD.subzero"}] \
if items block ~ ~ ~ container.13 book[custom_data~{CustomItem:"RD.grimoire"}] \
if items block ~ ~ ~ container.14 heart_of_the_sea[custom_data~{CustomItem:"RD.subzero"}] \
unless items block ~ ~ ~ container.21 * \
if items block ~ ~ ~ container.22 heart_of_the_sea[custom_data~{CustomItem:"RD.subzero"}] \
unless items block ~ ~ ~ container.23 * run return 7
#say RECIPE IS WRONG! RETURN NEXT RECIPE
return run function custom_items:custom_block/advanced_crafter/recipe_data/ruby/ruby_helmet