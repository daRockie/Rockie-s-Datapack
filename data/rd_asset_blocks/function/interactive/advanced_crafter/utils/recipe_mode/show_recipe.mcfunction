execute as @a[distance=..10] if items entity @s player.cursor *[custom_data~{TempItem:1b} | !custom_data~{Ingredient:1b}] as @s run tag @s add RD.has_recipe

item replace entity @s weapon.mainhand from entity @p[tag=RD.has_recipe] player.cursor


function rd_asset_blocks:interactive/advanced_crafter/utils/item_modify/fill_blank_craft_mode

scoreboard players set @s RD.isCrafting 2

clear @a *[custom_data~{TempItem:1b}]

item replace block ~ ~ ~ container.10 with writable_book[enchantment_glint_override=1b,custom_name={"text":"レシピ画面に戻る","italic":0b},custom_data={TempItem:1b}]

function rd_asset_blocks:interactive/advanced_crafter/recipe_viewer/set_recipe

