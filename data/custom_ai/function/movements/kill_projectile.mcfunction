execute store success score @s isSuccess run kill @e[tag=projectile,distance=0..2,nbt={OnGround:0b}]
execute if score @s isSuccess matches 1 run playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1 2
execute if score @s isSuccess matches 1 run particle crit ~ ~1 ~ 0.5 0.5 0.5 0.05 10