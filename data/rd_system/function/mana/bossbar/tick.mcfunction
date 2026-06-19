execute if score @s RD.mana.bossbar.fadeout matches ..0 run function rd_system:mana/bossbar/set_player with entity @s {}

execute if score @s RD.mana.bossbar.fadeout matches 1.. run scoreboard players remove @s RD.mana.bossbar.fadeout 1
