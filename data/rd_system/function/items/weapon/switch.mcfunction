execute unless score @s RD.mana >= $.mana_use RD.item.durabity run return run function custom_items:items/not_enough_mana
$execute if score @s RD.mana >= $.mana_use RD.item.durabity run function $(function)
function rd_system:mana/use_mana
$tellraw @s [{"score":{"name":"$.mana_use",objective:"RD.item.durabity"},color:"aqua"},{"text":" Mana(","color":"aqua"},{"text":"$(skill_name)","color":"gold"},{"text":")","color":"aqua"}]
