scoreboard players set @s RD.mana.max 100
scoreboard players set @s RD.mana.regen 20

scoreboard players add @s RD.mana 0
scoreboard players add @s RD.mana.max 0
scoreboard players add @s RD.mana.regen 0
scoreboard players operation @s RD.mana = @s RD.mana.max
scoreboard players set @s[type=player] RD.mana.bossbar.fadeout 0