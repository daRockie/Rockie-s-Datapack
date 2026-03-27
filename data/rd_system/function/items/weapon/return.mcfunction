#$say $(Loottable)
$loot replace entity @s weapon.mainhand loot $(Loottable)

# tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"#.max_damage",objective:"RD.item.durabity"}}]

# tellraw @a [{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]

# 耐久最大値から現在のダメージ値を減算
# tellraw @a [{"text":"Result: ",italic:false},{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]

# 計算して出た値と耐久最大値で除算
scoreboard players operation $.max_damage RD.item.durabity /= $.max_damage_tmp RD.item.durabity
# tellraw @a [{"text":"除算: ",italic:false},{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]

# 耐久値が0を下回った時アイテムを消去
execute unless score $.max_damage RD.item.durabity matches 1.. run return run function rd_system:items/weapon/break with entity @s SelectedItem

# 耐久値を設定
item modify entity @s weapon.mainhand custom_items:set_durability

# エンチャントを追加
item modify entity @s weapon.mainhand custom_items:set_enchantments
item modify entity @s weapon.mainhand custom_items:set_custom_enchantments

# tempデータを削除
data remove storage rockietools:item_modifier temp.durabity