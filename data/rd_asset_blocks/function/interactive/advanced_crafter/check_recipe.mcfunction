
# レシピの確認
execute unless items block ~ ~ ~ container.16 *[custom_data~{RD.recipeResult:1b}] unless items block ~ ~ ~ container.16 barrier[custom_data={TempItem:1b}] if entity @s[tag=RD.block.customCrafter.processing] if score @s RD._BOOLEAN matches 1 run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/meth/init

execute if score @s RD.isCrafting matches 1 run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/refer/init

execute if score @s RD._BOOLEAN matches 1 run tag @s add RD.block.customCrafter.processing

execute if score @s RD._BOOLEAN matches 0 run tag @s remove RD.block.customCrafter.processing

#execute if score @s RD.recipe_id matches 1.. unless items block ~ ~ ~ container.16 *[custom_data~{RD.recipeResult:1b}] run tellraw @p [{"text":"Recipe exists, but there is no item!","color":red}]

#execute if score @s RD.block.calculator.temp2 matches 1 unless items block ~ ~ ~ container.16 *[custom_data~{RD.recipeResult:1b}] unless items block ~ ~ ~ container.16 barrier[custom_data={TempItem:1b}] if entity @s[tag=RD.block.customCrafter.processing] if score @s isSuccess matches 1 run tellraw @p [{"text":"Run delete command"}]

