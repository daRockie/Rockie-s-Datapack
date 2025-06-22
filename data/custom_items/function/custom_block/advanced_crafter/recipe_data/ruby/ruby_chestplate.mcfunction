# アイテムのスロットが適用されるエリアは
# -------------
#
# 3,  4,  5
# 12, 13, 14
# 21, 22, 23
# 
# となり、それぞれ作業台における0～8番目のスロットに対応している
#
# -------------
#
# 今回の場合は
#
# ■ □ ■
# ■ ■ ■
# ■ ■ ■
#
# こんな感じに検知している
# 
# アイテムの不一致によるエラーが起きた際は、次のIDのレシピ確認関数を呼び出す（ルビーチェストプレートはID1, 魔法使いの帽子は2）

#say checking recipe: RUBY_CP

execute \
if items block ~ ~ ~ container.3 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
unless items block ~ ~ ~ container.4 * \
if items block ~ ~ ~ container.5 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
if items block ~ ~ ~ container.12 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
if items block ~ ~ ~ container.13 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
if items block ~ ~ ~ container.14 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
if items block ~ ~ ~ container.21 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
if items block ~ ~ ~ container.22 red_dye[custom_data~{CustomItem:"RD.ruby"}] \
if items block ~ ~ ~ container.23 red_dye[custom_data~{CustomItem:"RD.ruby"}] run return 1
#say RECIPE IS WRONG! RETURN NEXT RECIPE
return run function custom_items:custom_block/advanced_crafter/recipe_data/wizard_apprentice/wizard_hat