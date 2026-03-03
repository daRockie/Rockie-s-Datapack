# アイテムのスロットが適用されるエリアは
# -------------
# 3,  4,  5
# 12, 13, 14
# 21, 22, 23
# -------------
# 次IDとなるレシピが存在する場合は次に来るレシピIDの確認関数を呼び出し、存在しない場合は-1を返す

#say checking recipe: WIZARDS LEGGINGS

execute \
unless items block ~ ~ ~ container.3 * \
unless items block ~ ~ ~ container.4 * \
unless items block ~ ~ ~ container.5 * \
if items block ~ ~ ~ container.12 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] \
unless items block ~ ~ ~ container.13 * \
if items block ~ ~ ~ container.14 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] \
if items block ~ ~ ~ container.21 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] \
unless items block ~ ~ ~ container.22 * \
if items block ~ ~ ~ container.23 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] run return 11
#say RECIPE IS WRONG! RETURN NEXT RECIPE
return 0