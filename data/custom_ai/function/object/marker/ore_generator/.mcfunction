tag @s add RD.initialized

data modify entity @s data.x set from entity @s Pos[0]
data modify entity @s data.y set from entity @s Pos[1]
data modify entity @s data.z set from entity @s Pos[2]

# data modify entity @s data.ore set value []

# 鉱石のオフセット
execute store result entity @s[predicate=custom_ai:percent/20] data.ore[{type:"ruby"}].offset int 1 run random value -48..13

execute store result entity @s[predicate=custom_ai:percent/40] data.ore[{type:"peridot"}].offset int 1 run random value -20..30


# 生成を実行
execute store result entity @s data.rng_x int 1 run random value 0..15
execute store result entity @s data.rng_y int 1 run random value 0..15
execute store result entity @s data.rng_z int 1 run random value 0..15

# execute unless data entity @s data.ore[] run tellraw @a [{"entity":"@s","nbt":"data"}]
execute unless data entity @s data.ore[] run return run kill @s
# execute if data entity @s data.ore[] run tellraw @a [{"entity":"@s","nbt":"data","bold":1b}]
execute if data entity @s data.ore[] run function custom_ai:object/marker/ore_generator/generate/ with entity @s data