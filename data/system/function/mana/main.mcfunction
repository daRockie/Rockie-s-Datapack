# 長押し検知
tag @s[tag=!add_clicking_tag] remove clicking
tag @s[tag=add_clicking_tag] add clicking
execute store success score @s ability.right_click run tag @s remove add_clicking_tag

# クールダウン処理
scoreboard players add @s abilityCooldown.healing_wand 0
scoreboard players add @s abilityCooldown.fiery_wand 0
scoreboard players add @s abilityCooldown.wand_of_ardor 0
scoreboard players add @s abilityCooldown.reverberation 0
scoreboard players add @s item.shortBow.cooldown 0

execute if score @s abilityCooldown.healing_wand matches 1.. run scoreboard players remove @s abilityCooldown.healing_wand 1
execute if score @s abilityCooldown.fiery_wand matches 1.. run scoreboard players remove @s abilityCooldown.fiery_wand 1
execute if score @s abilityCooldown.wand_of_ardor matches 1.. run scoreboard players remove @s abilityCooldown.wand_of_ardor 1
execute if score @s abilityCooldown.reverberation matches 1.. run scoreboard players remove @s abilityCooldown.reverberation 1
execute if score @s item.shortBow.cooldown matches 1.. run scoreboard players remove @s item.shortBow.cooldown 1

execute if score @s abilityCooldown.reverberation matches 120 at @s run function custom_items:items/grimoire/reverberation/summon

# マナ関連の処理
scoreboard players add @s mana 0
scoreboard players add @s mana.max 0
scoreboard players add @s mana.regen 0
scoreboard players add @s mana.timer 1

execute store result score @s mana.operation run scoreboard players operation @s mana.timer %= @s mana.regen

execute if score @s mana.max matches 0 run scoreboard players set @s mana.max 100

execute if score @s mana.operation matches 0 if score @s mana < @s mana.max run function system:mana/add_mana
execute if score @s mana > @s mana.max run function system:mana/reset_mana

execute if items entity @s[type=player,gamemode=!creative] weapon.* *[custom_data~{CantPlace:1b}] run attribute @s block_interaction_range base set 0
execute unless items entity @s weapon.* *[custom_data~{CantPlace:1b}] run attribute @s block_interaction_range base set 5

# アイテムチェック（装備）
execute if items entity @s[tag=!eq.wizard_goggle_apprentice] armor.head player_head[custom_data~{CustomItem:"RD.equipment.wizards_goggle_apprentice"}] run scoreboard players add @s mana.max 10
execute if items entity @s[tag=!eq.wizard_goggle_apprentice] armor.head player_head[custom_data~{CustomItem:"RD.equipment.wizards_goggle_apprentice"}] run tag @s add eq.wizard_goggle_apprentice

execute unless items entity @s[tag=eq.wizard_goggle_apprentice] armor.head player_head[custom_data~{CustomItem:"RD.equipment.wizards_goggle_apprentice"}] run scoreboard players remove @s mana.max 10
execute unless items entity @s[tag=eq.wizard_goggle_apprentice] armor.head player_head[custom_data~{CustomItem:"RD.equipment.wizards_goggle_apprentice"}] run tag @s remove eq.wizard_goggle_apprentice

# wizard hat
execute if items entity @s[tag=!eq.wizard_hat] armor.head player_head[custom_data~{CustomItem:"RD.equipment.wizard_hat"}] run scoreboard players add @s mana.max 20
execute if items entity @s[tag=!eq.wizard_hat] armor.head player_head[custom_data~{CustomItem:"RD.equipment.wizard_hat"}] run tag @s add eq.wizard_hat

execute unless items entity @s[tag=eq.wizard_hat] armor.head player_head[custom_data~{CustomItem:"RD.equipment.wizard_hat"}] run scoreboard players remove @s mana.max 20
execute unless items entity @s[tag=eq.wizard_hat] armor.head player_head[custom_data~{CustomItem:"RD.equipment.wizard_hat"}] run tag @s remove eq.wizard_hat

# wizard robe
execute if items entity @s[tag=!eq.wizard_robe] armor.chest leather_chestplate[custom_data~{CustomItem:"RD.equipment.wizards_robe"}] run scoreboard players add @s mana.max 35
execute if items entity @s[tag=!eq.wizard_robe] armor.chest leather_chestplate[custom_data~{CustomItem:"RD.equipment.wizards_robe"}] run tag @s add eq.wizard_robe

execute unless items entity @s[tag=eq.wizard_robe] armor.chest leather_chestplate[custom_data~{CustomItem:"RD.equipment.wizards_robe"}] run scoreboard players remove @s mana.max 35
execute unless items entity @s[tag=eq.wizard_robe] armor.chest leather_chestplate[custom_data~{CustomItem:"RD.equipment.wizards_robe"}] run tag @s remove eq.wizard_robe


# wizard leggings
execute if items entity @s[tag=!eq.wizard_leggings] armor.legs leather_leggings[custom_data~{CustomItem:"RD.equipment.wizards_leggings"}] run scoreboard players add @s mana.max 25
execute if items entity @s[tag=!eq.wizard_leggings] armor.legs leather_leggings[custom_data~{CustomItem:"RD.equipment.wizards_leggings"}] run tag @s add eq.wizard_leggings

execute unless items entity @s[tag=eq.wizard_leggings] armor.legs leather_leggings[custom_data~{CustomItem:"RD.equipment.wizards_leggings"}] run scoreboard players remove @s mana.max 25
execute unless items entity @s[tag=eq.wizard_leggings] armor.legs leather_leggings[custom_data~{CustomItem:"RD.equipment.wizards_leggings"}] run tag @s remove eq.wizard_leggings

# wizard boots
execute if items entity @s[tag=!eq.wizard_boots] armor.feet leather_boots[custom_data~{CustomItem:"RD.equipment.wizards_boots"}] run scoreboard players add @s mana.max 10
execute if items entity @s[tag=!eq.wizard_boots] armor.feet leather_boots[custom_data~{CustomItem:"RD.equipment.wizards_boots"}] run tag @s add eq.wizard_boots

execute unless items entity @s[tag=eq.wizard_boots] armor.feet leather_boots[custom_data~{CustomItem:"RD.equipment.wizards_boots"}] run scoreboard players remove @s mana.max 10
execute unless items entity @s[tag=eq.wizard_boots] armor.feet leather_boots[custom_data~{CustomItem:"RD.equipment.wizards_boots"}] run tag @s remove eq.wizard_boots
