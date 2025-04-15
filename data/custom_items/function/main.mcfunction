execute as @e[type=armor_stand,tag=craft_pos] at @s run function custom_items:custom_crafter
scoreboard players set @a sneakTimer 0
execute as @a if dimension overworld run scoreboard players set @s deathCount 0
execute as @e[type=player] if score @s deathCount matches 3.. run function custom_items:give_warp_potion
execute as @a if items entity @s container.* minecraft:player_head[minecraft:custom_name={text:"転移のポーション",italic:0b},!minecraft:rarity=epic] store success score @s willReplaceItem run clear @s player_head[minecraft:custom_name={text:"転移のポーション",italic:0b},!minecraft:rarity=epic] 1
execute as @a if score @s willReplaceItem matches 1 run function custom_items:replace_potion
