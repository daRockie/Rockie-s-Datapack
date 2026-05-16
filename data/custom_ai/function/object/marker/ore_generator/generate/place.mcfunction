# 位置を指定

$function rd_asset_blocks:ore_generate {"x":$(x),"y":$(y),"z":$(z),"type":$(type)}

# $say $(type) generated! coords: $(x) $(y) $(z)

execute store result entity @s data.rng_x int 1 run random value 0..15
execute store result entity @s data.rng_y int 1 run random value 0..15
execute store result entity @s data.rng_z int 1 run random value 0..15

$data remove entity @s data.ore[{type:"$(type)"}]

function custom_ai:object/marker/ore_generator/generate/ with entity @s data