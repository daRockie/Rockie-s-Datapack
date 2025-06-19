# ルビーCP
$execute if score @s RD.recipe_id matches 1 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [1,0,1,1,1,1,1,1,1]

# 魔法使いの帽子
$execute if score @s RD.recipe_id matches 2 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [4,4,4,4,1,4,4,4,4]