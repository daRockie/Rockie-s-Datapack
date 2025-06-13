execute if entity @s[tag=!placed_barrel] run setblock ~ ~ ~ dispenser[facing=up]{CustomName:{"text":"改良型作業台","bold":true}}
execute if entity @s[tag=!placed_barrel] run function crafter_main:register with entity @s
tag @s add placed_barrel
execute if entity @s[tag=placed_barrel] unless block ~ ~ ~ dispenser[facing=up]{CustomName:{"text":"改良型作業台","bold":true}} run function custom_items:destroy_crafter with entity @s
function crafter_main:main
kill @e[type=item,distance=0..2,nbt={Item:{components:{"minecraft:custom_name":{text:"改良型作業台",bold:1b}},id:"minecraft:dispenser"}}]
# tell @a[distance=0..2,sort=nearest,limit=1] "a"
execute if score @a[distance=0..2,sort=nearest,limit=1] sneakTimer matches 1 run scoreboard players add @s ai_timer 1
execute unless entity @a[distance=0..2,predicate=custom_items:sneaking] run scoreboard players set @s ai_timer 0
execute unless block ~ ~ ~ dispenser{Items:[]} if score @s ai_timer matches 20.. if score @s isSuccess matches 1 run function crafter_main:do_craft

# データの定義
execute as @s run function crafter_main:set_counts