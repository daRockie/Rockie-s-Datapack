data modify entity @e[type=item,tag=SampleItem,limit=1,sort=nearest,distance=0..1.7] PickupDelay set value 0
data modify entity @e[type=item,tag=SampleItem,limit=1,sort=nearest,distance=0..1.7] NoGravity set value 0b
data modify entity @e[type=item,tag=SampleItem,limit=1,sort=nearest,distance=0..1.7] CustomNameVisible set value 0b

particle crit ~ ~2 ~ 0.5 0.5 0.5 0.05 10
playsound minecraft:block.iron_door.open block @a ~ ~ ~ 5 2
playsound block.note_block.bell block @a ~ ~ ~ 1 2
scoreboard players set @s ai_timer 0

item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.4 with air
item replace block ~ ~ ~ container.5 with air
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.7 with air
item replace block ~ ~ ~ container.8 with air