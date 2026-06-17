# say a

execute on passengers if entity @s[type=item_display] run tag @s add RD.head_entity

data modify entity @n[tag=RD.head_entity] Rotation[0] set from entity @s Rotation[0]

data modify entity @s transformation.translation[1] set value 0.5

