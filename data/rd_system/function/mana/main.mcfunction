#say running

# 長押し検知
execute if entity @s[type=player,tag=!RD.mana.init] run function rd_system:mana/init

# クールダウン処理
execute if score @s[type=player] RD.mana.bossbar.fadeout matches 1.. run scoreboard players remove @s[type=player] RD.mana.bossbar.fadeout 1

execute if score @s abilityCooldown.reverberation matches 1.. run scoreboard players remove @s abilityCooldown.reverberation 1

execute if score @s abilityCooldown.reverberation matches 120 at @s run function custom_items:items/grimoire/reverberation/summon

scoreboard players add @s RD.mana.timer 1

execute if entity @s[type=player] run function rd_system:mana/bossbar/tick

# マナ関連の処理
execute if entity @s[team=devs] run scoreboard players operation @s RD.mana = @s RD.mana.max

execute store result score @s RD.mana.operation run scoreboard players operation @s RD.mana.timer %= @s RD.mana.regen

execute if score @s RD.mana.max matches 0 run scoreboard players set @s RD.mana.max 100

execute if score @s RD.mana.operation matches 0 if score @s RD.mana < @s RD.mana.max run function rd_system:mana/add_mana with entity @s {}
execute if score @s RD.mana > @s RD.mana.max run function rd_system:mana/reset_mana with entity @s {}

execute if items entity @s[type=player,gamemode=!creative] weapon.* *[custom_data~{CantPlace:1b}] run attribute @s block_interaction_range base set 0
execute unless items entity @s weapon.* *[custom_data~{CantPlace:1b}] run attribute @s block_interaction_range base set 5
