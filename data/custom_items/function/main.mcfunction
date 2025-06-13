execute as @e[type=armor_stand,tag=craft_pos] at @s run function custom_items:custom_crafter

execute as @e[type=item,tag=SampleItem,nbt={NoGravity:1b}] at @s unless entity @e[type=armor_stand,tag=craft_pos,dy=-1] run kill @s

scoreboard players set @a sneakTimer 0
execute as @a if dimension overworld run scoreboard players set @s deathCount 0
execute as @e[type=player] if score @s deathCount matches 3.. run function custom_items:give_warp_potion

execute as @a if items entity @s container.* minecraft:player_head[minecraft:custom_name={text:"矢筒",italic:0b},!minecraft:rarity=common] store success score @s willReplaceItem run clear @s player_head[minecraft:custom_name={text:"矢筒",italic:0b},!minecraft:rarity="common"] 1
execute as @a if score @s willReplaceItem matches 1 run function custom_items:replace_quiver

execute as @a if items entity @s container.* minecraft:player_head[minecraft:custom_name={text:"転移のポーション",italic:0b},!minecraft:rarity=epic] store success score @s willReplaceItem run clear @s player_head[minecraft:custom_name={text:"転移のポーション",italic:0b},!minecraft:rarity=epic] 1
execute as @a if score @s willReplaceItem matches 1 run function custom_items:replace_potion

execute as @a if items entity @s container.* minecraft:player_head[minecraft:custom_name={text:"魔法の帽子",italic:0b},!minecraft:rarity=rare] run give @s player_head[profile={properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGU4YWM5YzU5Nzg5MjFmNWE1OTU1Njg1Y2FlMzdmYzhiOGFhNjE5MThjNzllNTk3MzRmN2RhY2NhNDc3YmJkOCJ9fX0=",name:textures}]},custom_name=[{"text":"魔法の帽子","italic":false}],lore=[[{"text":"魔導士のゴーグルを使用してクラフトできる防具。","italic":false}],[{"text":"マナの最大値を20増やす。","italic":false}]],rarity=rare,attribute_modifiers=[{type:armor,amount:3,slot:head,id:"minecraft_armor",operation:add_value}]]
execute as @a if items entity @s container.* minecraft:player_head[minecraft:custom_name={text:"魔法の帽子",italic:0b},!minecraft:rarity=rare] run clear @s player_head[minecraft:custom_name={text:"魔法の帽子",italic:0b},!minecraft:rarity=rare] 1

execute as @e store result score @s health run data get entity @s Health 1
execute as @e store result score @s RD.flame run data get entity @s Fire 1

execute as @e if entity @s[scores={health=7..},tag=final_surge_1] at @s run function custom_items:enchantment/surge/deactivate_1
execute as @e if entity @s[scores={health=9..},tag=final_surge_2] at @s run function custom_items:enchantment/surge/deactivate_2
execute as @e if entity @s[scores={health=11..},tag=final_surge_3] at @s run function custom_items:enchantment/surge/deactivate_3

execute as @e[tag=final_surge,tag=final_surge_1] at @s if data entity @s SelectedItem unless items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":1}] run function custom_items:enchantment/surge/deactivate_1
execute as @e[tag=final_surge,tag=final_surge_2] at @s if data entity @s SelectedItem unless items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":2}] run function custom_items:enchantment/surge/deactivate_2
execute as @e[tag=final_surge,tag=final_surge_3] at @s if data entity @s SelectedItem unless items entity @s weapon.mainhand *[minecraft:enchantments={"custom_items:final_surge":3}] run function custom_items:enchantment/surge/deactivate_3

# Equipment
execute as @a run function custom_items:equipments/mining_helmet/main
