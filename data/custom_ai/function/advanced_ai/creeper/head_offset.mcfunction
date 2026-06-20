# say a

# say a

execute on passengers if entity @s[type=item_display] run tag @s add RD.head_target

data modify entity @n[tag=RD.head_target] Rotation[0] set from entity @s Rotation[0]

data modify entity @n[tag=RD.head_target] Rotation[1] set from entity @s Rotation[1]

# tp @s ~ ~ ~ ~ ~

execute if predicate {condition:"entity_properties",entity:"this",predicate:{"effects":{invisibility:{}}}} run data modify entity @n[tag=RD.head_target] transformation.scale set value [0,0,0]
execute unless predicate {condition:"entity_properties",entity:"this",predicate:{"effects":{invisibility:{}}}} run data modify entity @n[tag=RD.head_target] transformation.scale set value [1.35,1.35,1.35]


# execute if entity @s[predicate=rd_asset_mobs:in_hostile] facing entity @p eyes run tp @n[tag=RD.head_entity] ~ ~ ~ ~ ~

tag @n[tag=RD.head_target] remove RD.head_target