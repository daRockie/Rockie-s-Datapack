execute if score @s RD.item.RC matches 0 if items entity @s container.* arrow at @s run function custom_items:items/tankyuu/used
execute if score @s RD.item.RC matches 0 unless items entity @s container.* arrow at @s run function custom_items:items/tankyuu/no_ammo
scoreboard players set @s RD.item.RC 2
advancement revoke @s only custom_items:item_used/weapons/tankyuu