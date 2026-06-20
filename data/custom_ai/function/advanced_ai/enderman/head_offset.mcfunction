# say a

$say $(offset)

execute on passengers if entity @s[type=item_display] run tag @s add RD.head_entity

data modify entity @n[tag=RD.head_entity] Rotation[0] set from entity @s Rotation[0]

data modify entity @n[tag=RD.head_entity] Rotation[0] set from entity @s Rotation[0]

tag @n[tag=RD.head_entity] remove RD.head_entity