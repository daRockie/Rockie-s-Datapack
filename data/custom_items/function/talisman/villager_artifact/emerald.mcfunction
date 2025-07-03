function custom_items:talisman/register with entity @s {}

scoreboard players set @s RD.item.emerald 0
scoreboard players set #_9 RD.item.emerald_calculator 9

execute store result score @s RD.item.emerald_calculator if items entity @s container.* minecraft:emerald

scoreboard players operation @s RD.item.emerald += @s RD.item.emerald_calculator

execute store result score @s RD.item.emerald_calculator if items entity @s container.* minecraft:emerald_block

scoreboard players operation @s RD.item.emerald_calculator *= #_9 RD.item.emerald_calculator

scoreboard players operation @s RD.item.emerald += @s RD.item.emerald_calculator

#tellraw @s [{"score":{name:"@s","objective":"RD.item.emerald"}}]

#execute if items entity @s armor.head player_head[custom_data~{CustomItem:"RD.equipment.villager_artifact"}] run item modify entity @s armor.head custom_items:villager_artifact

advancement revoke @s only custom_items:inventory_check/emerald