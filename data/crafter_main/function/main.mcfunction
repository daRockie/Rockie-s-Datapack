# レシピ読み込み
execute unless block ~ ~ ~ dispenser{Items:[]} if score @s recipe_id matches 0 run function crafter_main:recipes/villager_craft
execute unless block ~ ~ ~ dispenser{Items:[]} if score @s recipe_id matches 0 run function crafter_main:recipes/ruby_chestplate_craft
execute unless block ~ ~ ~ dispenser{Items:[]} if score @s recipe_id matches 0 run function crafter_main:recipes/wizard_hat_craft

scoreboard players add @s isSuccess 0
scoreboard players set @s recipe_id 0