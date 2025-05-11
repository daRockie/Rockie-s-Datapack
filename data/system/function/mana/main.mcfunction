# 長押し検知
tag @s[tag=!add_clicking_tag] remove clicking
tag @s[tag=add_clicking_tag] add clicking
execute store success score @s ability.right_click run tag @s remove add_clicking_tag

# クールダウン処理
scoreboard players add @s abilityCooldown.healing_wand 0
scoreboard players add @s abilityCooldown.fiery_wand 0

execute if score @s abilityCooldown.healing_wand matches 1.. run scoreboard players remove @s abilityCooldown.healing_wand 1
execute if score @s abilityCooldown.fiery_wand matches 1.. run scoreboard players remove @s abilityCooldown.fiery_wand 1

# マナ関連の処理
scoreboard players add @s mana 0
scoreboard players add @s mana.max 0
scoreboard players add @s mana.regen 0
scoreboard players add @s mana.timer 1

execute store result score @s mana.operation run scoreboard players operation @s mana.timer %= @s mana.regen

execute if score @s mana.max matches 0 run scoreboard players set @s mana.max 100

execute if score @s mana.operation matches 0 if score @s mana < @s mana.max run function system:mana/add_mana
execute if score @s mana > @s mana.max run function system:mana/reset_mana

# アイテムチェック（装備）
execute if items entity @s[tag=!eq.wizard_hat] armor.head player_head[minecraft:custom_name={text:"魔法の帽子",italic:0b},rarity=rare,minecraft:lore=[{text:"魔導士のゴーグルを使用してクラフトできる防具。",italic:0b},{text:"マナの最大値を20増やす。",italic:0b}]] run scoreboard players add @s mana.max 20
execute if items entity @s[tag=!eq.wizard_hat] armor.head player_head[minecraft:custom_name={text:"魔法の帽子",italic:0b},rarity=rare,minecraft:lore=[{text:"魔導士のゴーグルを使用してクラフトできる防具。",italic:0b},{text:"マナの最大値を20増やす。",italic:0b}]] run tag @s add eq.wizard_hat

execute unless items entity @s[tag=eq.wizard_hat] armor.head player_head[minecraft:custom_name={text:"魔法の帽子",italic:0b},rarity=rare,minecraft:lore=[{text:"魔導士のゴーグルを使用してクラフトできる防具。",italic:0b},{text:"マナの最大値を20増やす。",italic:0b}]] run scoreboard players remove @s mana.max 20
execute unless items entity @s[tag=eq.wizard_hat] armor.head player_head[minecraft:custom_name={text:"魔法の帽子",italic:0b},rarity=rare,minecraft:lore=[{text:"魔導士のゴーグルを使用してクラフトできる防具。",italic:0b},{text:"マナの最大値を20増やす。",italic:0b}]] run tag @s remove eq.wizard_hat