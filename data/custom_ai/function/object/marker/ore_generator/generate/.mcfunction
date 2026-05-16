scoreboard players reset @s RD.block.calculator
execute unless data entity @s data.ore[] run return run kill @s

# Xを記録
$scoreboard players set @s RD.block.calculator $(x)
$scoreboard players add @s RD.block.calculator $(rng_x)

execute store result entity @s data.final.x int 1 run scoreboard players get @s RD.block.calculator

# Zを記録
$scoreboard players set @s RD.block.calculator $(z)
$scoreboard players add @s RD.block.calculator $(rng_z)

execute store result entity @s data.final.z int 1 run scoreboard players get @s RD.block.calculator

execute if data entity @s data.ore[{type:"ruby"}] run data modify entity @s data.final.y set from entity @s data.ore[{type:"ruby"}].offset
execute if data entity @s data.ore[{type:"ruby"}] run data modify entity @s data.final.type set value "ruby"
execute if data entity @s data.ore[{type:"ruby"}] run function custom_ai:object/marker/ore_generator/generate/place with entity @s data.final

execute if data entity @s data.ore[{type:"peridot"}] run data modify entity @s data.final.y set from entity @s data.ore[{type:"peridot"}].offset
execute if data entity @s data.ore[{type:"peridot"}] run data modify entity @s data.final.type set value "peridot"
execute if data entity @s data.ore[{type:"peridot"}] run function custom_ai:object/marker/ore_generator/generate/place with entity @s data.final