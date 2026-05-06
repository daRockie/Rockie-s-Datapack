# マナ不足の場合処理を終了
execute unless score @s RD.mana >= $.mana_use RD.item.durabity run return run function custom_items:items/not_enough_mana

# マナが足りているなら武器に書き込まれているfunctionを実行
$execute if score @s RD.mana >= $.mana_use RD.item.durabity run function $(function)

# マナ消費
execute if score $.mana_use RD.item.durabity matches 1.. run function rd_system:mana/use_mana

# 現在ダメージ値から一回の使用ごとに減るダメージを計算
function rd_system:items/weapon/rng with storage rockietools:item_modifier temp

# マナ消費メッセージ
$execute if score $.mana_use RD.item.durabity matches 1.. run tellraw @s [{"score":{"name":"$.mana_use",objective:"RD.item.durabity"},color:"aqua"},{"text":" Mana(","color":"aqua"},{"text":"$(skill_name)","color":"gold"},{"text":")","color":"aqua"}]
