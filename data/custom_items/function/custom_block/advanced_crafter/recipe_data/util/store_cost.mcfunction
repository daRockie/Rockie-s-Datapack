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
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [0,1,0,1,1,1,0,1,0]

# 残響
$execute if score @s RD.recipe_id matches 4 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [2,4,2,4,1,4,2,4,2]

# ルビーのレギンス
$execute if score @s RD.recipe_id matches 5 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [1,1,1,1,0,1,1,0,1]

# ルビーのブーツ
$execute if score @s RD.recipe_id matches 6 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [0,0,0,1,0,1,1,0,1]

# ブリザード
$execute if score @s RD.recipe_id matches 7 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [0,1,0,1,1,1,0,1,0]

# ルビーのヘルメット
$execute if score @s RD.recipe_id matches 8 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [1,1,1,1,0,1,0,0,0]

# 魔法使いのローブ
$execute if score @s RD.recipe_id matches 9 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [1,0,1,1,1,1,1,1,1]

# 魔法使いのレギンス
$execute if score @s RD.recipe_id matches 10 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [1,1,1,1,0,1,1,0,1]

# 魔法使いのブーツ
$execute if score @s RD.recipe_id matches 11 run return run \
data modify storage rockietools:custom_crafter data."$(UUID)".cost set value [0,0,0,1,0,1,1,0,1]