# アイテムのスロットが適用されるエリアは
# -------------
# 3,  4,  5
# 12, 13, 14
# 21, 22, 23
# -------------
# 次IDとなるレシピが存在する場合は次に来るレシピIDの確認関数を呼び出し、存在しない場合は-1を返す

#say checking recipe: RUBY LEGGINGS

execute \
if items block ~ ~ ~ container.3 echo_shard \
if items block ~ ~ ~ container.4 sculk \
if items block ~ ~ ~ container.5 echo_shard \
if items block ~ ~ ~ container.12 sculk \
if items block ~ ~ ~ container.13 knowledge_book[custom_data~{"CustomItem":"RD.grimoire"}] \
if items block ~ ~ ~ container.14 sculk \
if items block ~ ~ ~ container.21 echo_shard \
if items block ~ ~ ~ container.22 sculk \
if items block ~ ~ ~ container.23 echo_shard run return 4
#say RECIPE IS WRONG! RETURN NEXT RECIPE
return run function custom_items:custom_block/advanced_crafter/recipe_data/ruby_leggings