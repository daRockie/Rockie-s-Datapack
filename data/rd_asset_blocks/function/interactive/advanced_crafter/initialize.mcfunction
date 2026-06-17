setblock ~ ~ ~ barrel[facing=up]{CustomName:{"text":"改良型作業台","bold":true}}
function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_craft_mode
scoreboard players set @s RD.isCrafting 1
tag @s add placed_barrel