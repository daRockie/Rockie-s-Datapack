# アイテムのスロットが適用されるエリアは
# -------------
# 3,  4,  5
# 12, 13, 14
# 21, 22, 23
# -------------
# 次IDとなるレシピが存在する場合は次に来るレシピIDの確認関数を呼び出し、存在しない場合は-1を返す

#say checking recipe: GRIMOIRE

execute \
if items block ~ ~ ~ container.3 lapis_lazuli \
if items block ~ ~ ~ container.4 iron_nugget \
if items block ~ ~ ~ container.5 lapis_lazuli \
if items block ~ ~ ~ container.12 iron_nugget \
if items block ~ ~ ~ container.13 player_head[minecraft:custom_name={text:"見習い魔導士のゴーグル",italic:0b,bold:1b},minecraft:profile={properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQwN2RhYTg3YzQyZjg2YzA3ODk1ZmQ0NTUwMTkwZDEwOGFlNzJiYThiNzllYzMzNTEzNmEyYmQ0MDczY2Y5ZCJ9fX0="}]}] \
if items block ~ ~ ~ container.14 iron_nugget \
if items block ~ ~ ~ container.21 lapis_lazuli \
if items block ~ ~ ~ container.22 iron_nugget \
if items block ~ ~ ~ container.23 lapis_lazuli run return 2
#say RECIPE IS WRONG! RETURN NEXT RECIPE
return run function custom_items:custom_block/advanced_crafter/recipe_data/grimoire/grimoire