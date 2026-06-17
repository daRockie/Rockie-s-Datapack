advancement revoke @s only custom_items:occasional/attack

execute unless data entity @s SelectedItem.components."minecraft:enchantments"."custom_items:crit" run function custom_items:equipments/util/damage_reset

scoreboard players set @s RD.damage_dealt 0