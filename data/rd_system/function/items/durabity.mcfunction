$data modify storage rockietools:item_modifier temp.damage_per_use set value $(durabity)
execute store result score #_RD.durabity_damage RD.item.durabity run data get storage rockietools:item_modifier temp.damage_per_use 1
scoreboard players operation #.max_damage RD.item.durabity -= #_RD.durabity RD.item.durabity
execute if score #.max_damage RD.item.durabity matches ..0 run return run item replace entity @s weapon.mainhand with air
item modify entity @s weapon.mainhand custom_items:set_durability