# say init
execute if entity @s[tag=RD.cmd] run return fail
execute if entity @s[tag=RD.no_auto_initialize] run return fail

tag @s[type=player] add RD.has_mana

execute if entity @s[tag=RD.has_mana] run function rd_asset_mobs:system/mana_initialize

execute if entity @s[type=player] run function rd_asset_mobs:system/link_marker with entity @s {}.UUID

tag @s add RD.initialized