# レシピの確認
execute store result score @s RD.recipe_id run function custom_items:custom_block/advanced_crafter/recipe_data/ruby_chestplate

#tellraw @a [{"score":{"name":"@s","objective":"RD.recipe_id"}}]

# レシピ成功の可否判定を出す
execute if score @s RD.recipe_id matches 1.. run scoreboard players set @s isSuccess 1
execute if score @s RD.recipe_id matches ..0 run scoreboard players set @s isSuccess 0

execute unless items block ~ ~ ~ container.16 *[custom_data={RD.recipeResult:1b}] if score @s isSuccess matches 1 run function custom_items:custom_block/advanced_crafter/utils/storage/modify_item_count with entity @s {}

execute if score @s isSuccess matches 1 unless items block ~ ~ ~ container.16 *[custom_data={RD.recipeResult:1b}] run function custom_items:custom_block/advanced_crafter/recipe_data/place_result

execute if score @s isSuccess matches 1 run function custom_items:custom_block/advanced_crafter/recipe_data/store_cost with entity @s {}