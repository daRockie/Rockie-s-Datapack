data modify entity @e[type=item,tag=SampleItem,limit=1,sort=nearest,distance=0..1.7] PickupDelay set value 0
data modify entity @e[type=item,tag=SampleItem,limit=1,sort=nearest,distance=0..1.7] NoGravity set value 0b
data modify entity @e[type=item,tag=SampleItem,limit=1,sort=nearest,distance=0..1.7] CustomNameVisible set value 0b

particle crit ~ ~2 ~ 0.5 0.5 0.5 0.05 10
playsound minecraft:block.iron_door.open block @a ~ ~ ~ 5 2
playsound block.note_block.bell block @a ~ ~ ~ 1 2
scoreboard players set @s ai_timer 0

function crafter_main:do_sum