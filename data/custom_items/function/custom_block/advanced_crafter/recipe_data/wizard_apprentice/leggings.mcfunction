# アイテムのスロットが適用されるエリアは
# -------------
# 3,  4,  5
# 12, 13, 14
# 21, 22, 23
# -------------
# 次IDとなるレシピが存在する場合は次に来るレシピIDの確認関数を呼び出し、存在しない場合は-1を返す

#say checking recipe: WIZARDS BOOTS

execute \
if items block ~ ~ ~ container.3 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] \
unless items block ~ ~ ~ container.4 emerald[custom_data~{CustomItem:"RD.peridot"}] \
if items block ~ ~ ~ container.5 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] \
if items block ~ ~ ~ container.12 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] \
unless items block ~ ~ ~ container.13 * \
if items block ~ ~ ~ container.14 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] \
if items block ~ ~ ~ container.21 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] \
unless items entity @s container.16 * \
if items block ~ ~ ~ container.23 purple_dye[custom_data~{CustomItem:"RD.classy_cloth"},custom_model_data={"strings":["RD.classy_cloth"]}] run return 10
#say RECIPE IS WRONG! RETURN NEXT RECIPE
return run function custom_items:custom_block/advanced_crafter/recipe_data/wizard_apprentice/boots