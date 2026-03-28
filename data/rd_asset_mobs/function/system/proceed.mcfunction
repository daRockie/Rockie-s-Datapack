execute if score @s lifeTime matches ..10 run scoreboard players add @s lifeTime 1
execute if score @s lifeTime matches ..10 run scoreboard players set @s RD.mana.max 100
execute if score @s lifeTime matches ..10 run scoreboard players set @s RD.mana.regen 20

scoreboard players add @s RD.mana 0
scoreboard players add @s RD.mana.max 0
scoreboard players add @s RD.mana.regen 0
scoreboard players operation @s RD.mana = @s RD.mana.max
scoreboard players add @s RD.mana.bossbar.fadeout 0

execute if score @s lifeTime matches 10.. run tag @s add RD.initialized