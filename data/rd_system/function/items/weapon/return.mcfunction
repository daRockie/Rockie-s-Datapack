#$say $(Loottable)
$loot replace entity @s weapon.mainhand loot $(Loottable)

# tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"#.max_damage",objective:"RD.item.durabity"}}]

# 現在ダメージ値から一回の使用ごとに減るダメージを計算
scoreboard players operation $.max_damage RD.item.durabity -= $.damage_per_use RD.item.durabity
tellraw @a [{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]

# 耐久最大値から現在のダメージ値を減算
tellraw @a [{"text":"Result: ",italic:false},{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]

# 計算して出た値と耐久最大値で除算
scoreboard players operation $.max_damage RD.item.durabity /= $.max_damage_tmp RD.item.durabity
tellraw @a [{"text":"除算: ",italic:false},{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]

# 耐久値が0を下回った時アイテムを消去
execute if score $.max_damage RD.item.durabity matches ..0 run return run function rd_system:items/weapon/break with entity @s SelectedItem

# 耐久値を設定
item modify entity @s weapon.mainhand custom_items:set_durability

# ダメージのコンポーネントデータがあった時、ダメージデータを取得してストレージに代入
execute if data entity @s SelectedItem.components."minecraft:damage" store result storage rockietools:item_modifier temp.current_damage int 1 run data get entity @s SelectedItem.components."minecraft:damage"

# ダメージデータが存在しなかったとき、現在のダメージ値を0に設定
execute unless data entity @s SelectedItem.components."minecraft:damage" run data modify storage rockietools:item_modifier temp.current_damage set value 0

# tempデータを削除
data remove storage rockietools:item_modifier temp.durabity