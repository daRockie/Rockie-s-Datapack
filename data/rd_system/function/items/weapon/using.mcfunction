scoreboard players set $.max_damage RD.item.durabity 0
scoreboard players set $.damage RD.item.durabity 0
scoreboard players set $.damage_per_use RD.item.durabity 0
scoreboard players set $.max_damage_tmp RD.item.durabity 0
scoreboard players set $.mana_reduce RD.item.durabity 0
scoreboard players set $.mana_use RD.item.durabity 0

function rd_system:items/weapon/store_damage with entity @s SelectedItem.components."minecraft:use_remainder".components."minecraft:custom_data"
advancement revoke @s only rd_system:using_item