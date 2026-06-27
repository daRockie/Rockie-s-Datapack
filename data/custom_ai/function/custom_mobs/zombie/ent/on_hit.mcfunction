execute on attacker if items entity @s weapon.* #minecraft:axes as @n[type=zombie,tag=RD.ent,nbt={HurtTime:10s}] run return run function custom_ai:custom_mobs/zombie/ent/hit/by_axe

execute if predicate rd_asset_mobs:on_fire run function custom_ai:custom_mobs/zombie/ent/hit/on_fire

function custom_ai:custom_mobs/zombie/ent/hit/by_anything_else