# 最大耐久値を取得
data modify storage rockietools:item_modifier temp.max_damage set from entity @s SelectedItem.components."minecraft:max_damage"

# ダメージのコンポーネントデータがあった時、ダメージデータを取得してストレージに代入
execute if data entity @s SelectedItem.components."minecraft:damage" store result storage rockietools:item_modifier temp.current_damage int 1 run data get entity @s SelectedItem.components."minecraft:damage"


# ダメージデータが存在しなかったとき、現在のダメージ値を0に設定
execute unless data entity @s SelectedItem.components."minecraft:damage" run data modify storage rockietools:item_modifier temp.current_damage set value 0

# スコアに取得したデータを代入
execute store result score #.max_damage RD.item.durabity run data get storage rockietools:item_modifier temp.max_damage 100
execute store result score #.max_damage_tmp RD.item.durabity run data get storage rockietools:item_modifier temp.max_damage 100
# tellraw @a [{"text":"Max Damage: ",italic:false},{"score":{name:"#.max_damage",objective:"RD.item.durabity"}}]

execute store result score #.damage RD.item.durabity run data get storage rockietools:item_modifier temp.current_damage
# tellraw @a [{"text":"Damage: ",italic:false},{"score":{name:"#.damage",objective:"RD.item.durabity"}}]



# 現在ダメージ値を最大ダメージ値に再代入
execute store result storage rockietools:item_modifier temp.current_damage int 0.01 run scoreboard players get #.max_damage RD.item.durabity