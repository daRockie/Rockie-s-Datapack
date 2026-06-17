tag @s add RD.combo_user
# say a

execute if entity @s[type=!player] run scoreboard players set @s RD.damage_dealt 8

execute if data entity @s equipment.mainhand store result score $.crit_level RD.damage_dealt run data get entity @s equipment.mainhand.components."minecraft:enchantments"."custom_items:crit"
execute unless data entity @s equipment.mainhand store result score $.crit_level RD.damage_dealt run data get entity @s SelectedItem.components."minecraft:enchantments"."custom_items:crit"

summon marker ~ ~ ~ {Tags:["RD.crit_temp"],data:{"damage":0,"owner":"","enchant_level":1}}

# tellraw @a [{"score":{"name":"@s","objective":"RD.damage_dealt"}}]

scoreboard players operation @s RD.damage_dealt *= $.crit_level RD.damage_dealt

tellraw @a [{"score":{name:"@s",objective:"RD.damage_dealt"}}]

scoreboard players operation $.addition_damage RD.damage_dealt = @s RD.damage_dealt

scoreboard players operation $.addition_damage RD.damage_dealt *= $.crit_level RD.damage_dealt

scoreboard players operation $.addition_damage RD.damage_dealt /= #const.100 health

tellraw @a [{"score":{name:"$.addition_damage",objective:"RD.damage_dealt"}}]

scoreboard players operation @s RD.damage_dealt += $.addition_damage RD.damage_dealt

tellraw @a [{"score":{name:"@s",objective:"RD.damage_dealt"}}]

scoreboard players set $.crit_level RD.damage_dealt 0

scoreboard players set $.addition_damage RD.damage_dealt 0

execute store result entity @n[type=marker,tag=RD.crit_temp] data.damage float 0.1 run scoreboard players get @s RD.damage_dealt



data modify entity @n[type=marker,tag=RD.crit_temp] data.owner set from entity @s {}.UUID

data modify entity @n[type=marker,tag=RD.crit_temp] data.enchant_level set from entity @s {}.SelectedItem.components."minecraft:enchantments"."custom_items:crit"

tellraw @a [{"entity":"@n[type=marker,tag=RD.crit_temp]",nbt:"data"}]



execute as @n[nbt={HurtTime:10s}] at @s positioned ~ ~1 ~ run function custom_items:enchantment/crit/damage with entity @n[tag=RD.crit_temp,type=marker] data
