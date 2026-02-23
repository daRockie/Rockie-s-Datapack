# tellraw @a [{"text":"Recipe Filler","color":"gray","bold":true}]

scoreboard players set @s RD.recipe_id 0
scoreboard players set @s RD.custom_block.CALC_0 0
scoreboard players set @s RD.temp0 0
scoreboard players set @s RD._BOOLEAN 0

# temp削除
data remove storage rockietools:custom_crafter temp_crafter.meta

# temp設定
data modify storage rockietools:custom_recipe temp_crafter.list set from storage rockietools:custom_recipe list.crafter
data modify storage rockietools:custom_recipe temp_crafter.meta set from storage rockietools:custom_recipe meta
data remove storage rockietools:custom_recipe temp_crafter.list[0]

function custom_items:custom_block/advanced_crafter/utils/storage/recipes/refer/