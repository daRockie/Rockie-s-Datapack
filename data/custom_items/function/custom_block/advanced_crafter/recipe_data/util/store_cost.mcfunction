#say stored cost

$execute if score @s RD.recipe_id matches ..0 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [0,0,0,0,0,0,0,0,0]

# ルビーCP
$execute if score @s RD.recipe_id matches 1 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [1,0,1,1,1,1,1,1,1]

# 魔法使いの帽子
$execute if score @s RD.recipe_id matches 2 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [4,4,4,4,1,4,4,4,4]

# グリモア
$execute if score @s RD.recipe_id matches 3 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [1,1,1,1,1,1,1,1,1]

# 残響
$execute if score @s RD.recipe_id matches 4 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [1,4,1,4,1,4,1,4,1]

# ルビーのレギンス
$execute if score @s RD.recipe_id matches 5 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [1,1,1,1,0,1,1,0,1]

# ルビーのレギンス
$execute if score @s RD.recipe_id matches 6 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [0,0,0,1,0,1,1,0,1]