# レシピの確認
execute store result score @s RD.recipe_id run function custom_items:custom_block/advanced_crafter/recipe_data/ruby_chestplate

#tellraw @a [{"score":{"name":"@s","objective":"RD.recipe_id"}}]

# レシピ成功の可否判定を出す
execute if score @s RD.recipe_id matches 1.. run scoreboard players set @s isSuccess 1
execute if score @s RD.recipe_id matches ..0 run scoreboard players set @s isSuccess 0