# レシピ読み込み
execute unless block ~ ~ ~ dispenser{Items:[]} if score @s recipe_id matches 0 run function crafter_main:recipes/villager_craft
execute unless block ~ ~ ~ dispenser{Items:[]} if score @s recipe_id matches 0 run function crafter_main:recipes/ruby_chestplate_craft
execute unless block ~ ~ ~ dispenser{Items:[]} if score @s recipe_id matches 0 run function crafter_main:recipes/wizard_hat_craft

execute if entity @s[tag=placed_barrel] if block ~ ~ ~ dispenser[facing=up]{CustomName:{"text":"改良型作業台","bold":true}} unless entity @e[type=block_display,distance=..0.5,tag=RD.block.customCrafter] align xyz positioned ~0.5 ~ ~0.5 run function crafter_main:replace_block_display

#execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=block_display,tag=RD.block.customCrafter] run particle block_marker{block_state:{Name:"barrier"}} ~ ~1 ~

#particle angry_villager ~ ~1 ~

scoreboard players add @s isSuccess 0
scoreboard players set @s recipe_id 0

