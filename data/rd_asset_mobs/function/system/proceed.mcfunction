# say init

execute unless score @s lifeTime matches -2147483648..2147483647 run scoreboard players set @s lifeTime 0

execute if entity @s[tag=RD.cmd] run return fail
execute if entity @s[tag=RD.no_auto_initialize] run return fail

tag @s[type=player] add RD.has_mana

execute if score @s lifeTime matches ..10 run scoreboard players add @s lifeTime 1
execute if score @s lifeTime matches ..10 run scoreboard players set @s RD.mana.max 100
execute if score @s lifeTime matches ..10 run scoreboard players set @s RD.mana.regen 20

scoreboard players add @s[tag=RD.has_mana] RD.mana 0
scoreboard players add @s[tag=RD.has_mana] RD.mana.max 0
scoreboard players add @s[tag=RD.has_mana] RD.mana.regen 0
scoreboard players operation @s[tag=RD.has_mana] RD.mana = @s[tag=RD.has_mana] RD.mana.max
scoreboard players add @s[type=player] RD.mana.bossbar.fadeout 0

execute if entity @s[type=player] run function rd_asset_mobs:system/link_marker with entity @s {}.UUID

execute if score @s lifeTime matches 10.. run tag @s add RD.initialized