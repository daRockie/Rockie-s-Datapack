execute at @s run data modify entity @s Rotation set from entity @n[type=enderman] Rotation

execute positioned ~ ~-2 ~ as @n[type=enderman,distance=..0.5] if predicate rd_asset_mobs:in_hostile on passengers on passengers run data modify entity @s transformation.translation[1] set value 0.5

execute positioned ~ ~-2 ~ as @n[type=enderman,distance=..0.5] unless predicate rd_asset_mobs:in_hostile on passengers on passengers run data modify entity @s transformation.translation[1] set value 0.25