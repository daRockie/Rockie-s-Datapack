$execute store result score @s RD.block.calculator run random value $(rngmin)..$(rngmax)


execute store result entity @s equipment.head.components."minecraft:custom_data".x int 1 run random value -1..1
execute store result entity @s equipment.head.components."minecraft:custom_data".y int 1 run random value -1..1
execute store result entity @s equipment.head.components."minecraft:custom_data".z int 1 run random value -1..1

$execute if predicate rd_asset_blocks:location_y0 run function $(function)spawn_deepslate {"pos": "~ ~0.5 ~"}
$execute unless predicate rd_asset_blocks:location_y0 run function $(function)spawn {"pos": "~ ~0.5 ~"}

execute if score @s RD.block.calculator matches 1.. run return run execute positioned ~ ~-0.5 ~ run function rd_asset_blocks:sys/ore_generation/ with entity @s equipment.head.components."minecraft:custom_data"