# tellraw @a [{"text":"Recipe Filler","color":"gray","bold":true}]

scoreboard players set @s RD.block.calculator.temp3 0


# temp削除
data remove storage rockietools:custom_crafter temp_crafter.meta

# temp設定
data modify storage rockietools:custom_recipe temp_crafter.list set from storage rockietools:custom_recipe list.crafter
data modify storage rockietools:custom_recipe temp_crafter.meta set from storage rockietools:custom_recipe meta
data remove storage rockietools:custom_recipe temp_crafter.list[0]

function custom_items:custom_block/advanced_crafter/utils/storage/recipes/fill/ with storage rockietools:custom_recipe temp_crafter.meta.crafter.allowed_slot[-1]