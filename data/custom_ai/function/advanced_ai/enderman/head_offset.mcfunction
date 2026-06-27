# say a

# $say $(offset)

execute on passengers if entity @s[type=item_display] run tag @s add RD.head_entity

summon marker ~ ~ ~ {Tags:["RD.direction_temp","RD.initialized"]}

execute as @n[type=marker,tag=RD.direction_temp] facing entity @p eyes run tp @s ~ ~ ~ ~ ~

execute if entity @s[predicate=!rd_asset_mobs:in_hostile] if entity @p[distance=0..4] run data modify entity @n[tag=RD.head_entity] Rotation set from entity @n[type=marker] Rotation

data modify entity @n[tag=RD.head_entity] Rotation[0] set from entity @s Rotation[0]

data modify entity @n[tag=RD.head_entity] Rotation[1] set from entity @s Rotation[1]

$data modify entity @n[tag=RD.head_entity] transformation.translation[1] set value $(offset)

# tellraw @a [{"entity":"@n[type=marker]",nbt:"Rotation"}]

tag @n[tag=RD.head_entity] remove RD.head_entity

kill @n[type=marker,tag=RD.direction_temp]