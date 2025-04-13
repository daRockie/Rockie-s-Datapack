execute unless block ~ ~ ~ dispenser run setblock ~ ~ ~ dispenser[facing=up]{CustomName:{"text":"改良型作業台","bold":true}}
function crafter_main:main
kill @e[type=item,distance=0..2,nbt={Item:{components:{"minecraft:custom_name":{text:"改良型作業台",bold:1b}},id:"minecraft:dispenser"}}]
# tell @a[distance=0..2,sort=nearest,limit=1] "a"
execute if score @a[distance=0..2,sort=nearest,limit=1] sneakTimer matches 1 run scoreboard players add @s ai_timer 1
execute unless entity @a[distance=0..2] run scoreboard players set @s ai_timer 0
execute unless block ~ ~ ~ dispenser{Items:[]} if score @s ai_timer matches 20.. if score @s isSuccess matches 1 run function crafter_main:do_craft
execute if score @s ai_timer matches 40.. run function custom_items:destroy_crafter