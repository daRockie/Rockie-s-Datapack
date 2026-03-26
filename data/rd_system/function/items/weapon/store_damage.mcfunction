
### Initialize

# ダメージのコンポーネントデータがあった時、ダメージデータを取得してストレージに代入、エンチャントも同様
execute if data entity @s SelectedItem.components."minecraft:damage" store result storage rockietools:item_modifier temp.current_damage int 1 run data get entity @s SelectedItem.components."minecraft:damage"
execute if data entity @s SelectedItem.components."minecraft:enchantments" run data modify storage rockietools:item_modifier temp.enchantments set from entity @s SelectedItem.components."minecraft:enchantments"

# マナ割引
execute store result score $.mana_reduce RD.item.durabity run data get storage rockietools:item_modifier temp.enchantments."custom_items:mana_reduce" 1
execute if score $.mana_reduce RD.item.durabity matches 0 run scoreboard players set $.mana_reduce RD.item.durabity 1

# ダメージデータが存在しなかったとき、現在のダメージ値を0に設定
execute unless data entity @s SelectedItem.components."minecraft:damage" run data modify storage rockietools:item_modifier temp.current_damage set value 0
execute unless data entity @s SelectedItem.components."minecraft:enchantments" run data modify storage rockietools:item_modifier temp.enchantments set value []

# もしマナ消費が存在すれば、それを記録
execute if data entity @s SelectedItem.components."minecraft:use_remainder".components."minecraft:custom_data"."mana_use" store result storage rockietools:item_modifier temp.mana_use int 1 run data get entity @s SelectedItem.components."minecraft:use_remainder".components."minecraft:custom_data"."mana_use"
execute unless data entity @s SelectedItem.components."minecraft:use_remainder".components."minecraft:custom_data"."mana_use" store result storage rockietools:item_modifier temp.mana_use int 1 run data modify storage rockietools:item_modifier temp.mana_use set value 0

# 耐久値消費量を取得
$data modify storage rockietools:item_modifier temp.damage_per_use set value $(damage_per_use)
$data modify storage rockietools:item_modifier temp.skill_name set value "$(skill_name)"

# 最大耐久値を取得
data modify storage rockietools:item_modifier temp.max_damage set from entity @s SelectedItem.components."minecraft:max_damage"


# スコアに取得したデータを代入
execute store result score $.mana_use RD.item.durabity run data get storage rockietools:item_modifier temp.mana_use 1

scoreboard players operation $.mana_use RD.item.durabity /= $.mana_reduce RD.item.durabity

execute store result score $.max_damage RD.item.durabity run data get storage rockietools:item_modifier temp.max_damage 10000
execute store result score $.max_damage_tmp RD.item.durabity run data get storage rockietools:item_modifier temp.max_damage 1

execute store result score $.damage RD.item.durabity run data get storage rockietools:item_modifier temp.current_damage 10000

execute store result score $.damage_per_use RD.item.durabity run data get storage rockietools:item_modifier temp.damage_per_use 10000

# tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]
# tellraw @a [{"text":"Damage: ",italic:false},{"score":{name:"$.damage",objective:"RD.item.durabity"}}]

# ダメージ計算
scoreboard players operation $.max_damage RD.item.durabity -= $.damage RD.item.durabity
# tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]

# 耐久値が0を下回った時アイテムを消去
execute unless score $.max_damage RD.item.durabity matches 1.. run return run function rd_system:items/weapon/break with entity @s SelectedItem

# 現在ダメージ値を最大ダメージ値に再代入
execute store result storage rockietools:item_modifier temp.current_damage int 1 run scoreboard players get $.max_damage RD.item.durabity

# tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"$.max_damage",objective:"RD.item.durabity"}}]
