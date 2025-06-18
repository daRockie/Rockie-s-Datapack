execute if entity @s[tag=!placed_barrel] run setblock ~ ~ ~ barrel[facing=up]{CustomName:{"text":"改良型作業台","bold":true}}
execute if entity @s[tag=!placed_barrel] run function custom_items:custom_block/advanced_crafter/utils/item_modify/fill_blank_craft_mode
execute if entity @s[tag=!placed_barrel] run scoreboard players set @s isCrafting 1
tag @s add placed_barrel
execute if entity @s[tag=placed_barrel] unless block ~ ~ ~ barrel[facing=up]{CustomName:{"text":"改良型作業台","bold":true}} run function custom_items:custom_block/advanced_crafter/destroy_crafter
#function crafter_main:main
kill @e[type=item,distance=0..2,nbt={Item:{components:{"minecraft:custom_name":{text:"改良型作業台",bold:1b}},id:"minecraft:dispenser"}}]
# tell @a[distance=0..2,sort=nearest,limit=1] "a"
execute if score @a[distance=0..2,sort=nearest,limit=1] sneakTimer matches 1 run scoreboard players add @s ai_timer 1
execute unless entity @a[distance=0..2,predicate=custom_items:sneaking] run scoreboard players set @s ai_timer 0
#execute unless block ~ ~ ~ dispenser{Items:[]} if score @s ai_timer matches 20.. if score @s isSuccess matches 1 run function crafter_main:do_craft

# ブロックディスプレイ
execute if entity @s[tag=placed_barrel] if block ~ ~ ~ barrel[facing=up]{CustomName:{"text":"改良型作業台","bold":true}} unless entity @e[type=block_display,distance=..0.5,tag=RD.block.customCrafter] align xyz positioned ~0.5 ~ ~0.5 run function custom_items:custom_block/advanced_crafter/replace_block_display

# ホッパー使うなアホ
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace hopper destroy

# 音止め
execute if block ~ ~ ~ barrel[facing=up,open=false]{CustomName:{"text":"改良型作業台","bold":true}} if entity @s[tag=opening] as @a[distance=0..4] run function custom_items:custom_block/stop_sound
execute if block ~ ~ ~ barrel[facing=up,open=false]{CustomName:{"text":"改良型作業台","bold":true}} if entity @s[tag=opening] run tag @s remove opening

# データの定義
execute if block ~ ~ ~ barrel[facing=up]{CustomName:{"text":"改良型作業台","bold":true}} run function custom_items:custom_block/advanced_crafter/utils/register with entity @s {}