# say a

# tellraw @a [{score:{name:"@s","objective":"RD.block.calculator"}}]

execute store result entity @s equipment.head.components."minecraft:custom_data".Pos.x int 1 run data get entity @s Pos[0]
execute store result entity @s equipment.head.components."minecraft:custom_data".Pos.y int 1 run data get entity @s Pos[1]
execute store result entity @s equipment.head.components."minecraft:custom_data".Pos.z int 1 run data get entity @s Pos[2]

execute store result entity @s equipment.head.components."minecraft:custom_data".x int 1 run random value -1..1
execute store result entity @s equipment.head.components."minecraft:custom_data".y int 1 run random value -1..1
execute store result entity @s equipment.head.components."minecraft:custom_data".z int 1 run random value -1..1


$execute if predicate rd_asset_blocks:location_y0 run function $(function)spawn_deepslate {"pos": "~$(x) ~$(y) ~$(z)"}
$execute unless predicate rd_asset_blocks:location_y0 run function $(function)spawn {"pos": "~$(x) ~$(y) ~$(z)"}

scoreboard players remove @s RD.block.calculator 1


execute if score @s RD.block.calculator matches 1.. run return run function rd_asset_blocks:sys/ore_generation/ with entity @s equipment.head.components."minecraft:custom_data"

# say end
kill @s