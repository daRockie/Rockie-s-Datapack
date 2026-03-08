
### Initialize

# 耐久値消費量を取得
$data modify storage rockietools:item_modifier temp.damage_per_use set value $(damage_per_use)

# 最大耐久値を取得
data modify storage rockietools:item_modifier temp.max_damage set from entity @s SelectedItem.components."minecraft:max_damage"

# スコアに取得したデータを代入
execute store result score $.max_damage RD.item.durabity run data get storage rockietools:item_modifier temp.max_damage 10000
execute store result score $.max_damage_tmp RD.item.durabity run data get storage rockietools:item_modifier temp.max_damage 1

execute store result score $.damage RD.item.durabity run data get storage rockietools:item_modifier temp.current_damage 10000

execute store result score $.damage_per_use RD.item.durabity run data get storage rockietools:item_modifier temp.damage_per_use 10000

tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]
tellraw @a [{"text":"Damage: ",italic:false},{"score":{name:"$.damage",objective:"RD.item.durabity"}}]

# ダメージ計算
scoreboard players operation $.max_damage RD.item.durabity -= $.damage RD.item.durabity


# 現在ダメージ値を最大ダメージ値に再代入
execute store result storage rockietools:item_modifier temp.current_damage int 1 run scoreboard players get $.max_damage RD.item.durabity

tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]
