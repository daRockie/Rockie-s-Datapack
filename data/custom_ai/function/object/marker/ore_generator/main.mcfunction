data modify entity @s data.x set from entity @s Pos[0]
data modify entity @s data.y set from entity @s Pos[1]
data modify entity @s data.z set from entity @s Pos[2]

execute store result entity @s data.rng_x int 1 run random value 0..15
execute store result entity @s data.rng_y int 1 run random value 0..15
execute store result entity @s data.rng_z int 1 run random value 0..15

# 鉱石のオフセット
execute store result entity @s data.ruby.offset int 1 run random value -32..10

execute store result entity @s data.peridot.offset int 1 run random value -48..30
