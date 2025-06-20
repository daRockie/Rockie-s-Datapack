# レシピの確認
execute store result score @s RD.recipe_id run function custom_items:custom_block/advanced_crafter/recipe_data/ruby_chestplate

#tellraw @a [{"score":{"name":"@s","objective":"RD.recipe_id"}}]

# コスト比較
function custom_items:custom_block/advanced_crafter/recipe_data/util/store_cost with entity @s {}

execute if score @s RD.recipe_id matches 1.. store result score @s RD.block.calculator.temp2 run function custom_items:custom_block/advanced_crafter/utils/storage/compare_cost with entity @s {}
execute if score @s RD.recipe_id matches ..0 run scoreboard players set @s RD.block.calculator.temp2 0

# レシピ成功の可否判定を出す
execute if score @s RD.recipe_id matches 1.. if score @s RD.block.calculator.temp2 matches 1 run scoreboard players set @s isSuccess 1
execute if score @s RD.recipe_id matches ..0 run scoreboard players set @s isSuccess 0

execute if score @s isSuccess matches 1 run tag @s add RD.block.customCrafter.processing

execute if score @s isSuccess matches 0 run tag @s remove RD.block.customCrafter.processing

#execute if score @s RD.recipe_id matches 1.. unless items block ~ ~ ~ container.16 *[custom_data~{RD.recipeResult:1b}] run tellraw @p [{"text":"Recipe exists, but there is no item!","color":red}]

#execute if score @s RD.block.calculator.temp2 matches 1 unless items block ~ ~ ~ container.16 *[custom_data~{RD.recipeResult:1b}] unless items block ~ ~ ~ container.16 barrier[custom_data={TempItem:1b}] if entity @s[tag=RD.block.customCrafter.processing] if score @s isSuccess matches 1 run tellraw @p [{"text":"Run delete command"}]

execute if score @s RD.block.calculator.temp2 matches 1 unless items block ~ ~ ~ container.16 *[custom_data~{RD.recipeResult:1b}] unless items block ~ ~ ~ container.16 barrier[custom_data={TempItem:1b}] if entity @s[tag=RD.block.customCrafter.processing] if score @s isSuccess matches 1 run function custom_items:custom_block/advanced_crafter/utils/storage/modify_item_count with entity @s {}

execute if score @s isSuccess matches 1 unless items block ~ ~ ~ container.16 *[custom_data~{RD.recipeResult:1b}] run function custom_items:custom_block/advanced_crafter/recipe_data/util/place_result