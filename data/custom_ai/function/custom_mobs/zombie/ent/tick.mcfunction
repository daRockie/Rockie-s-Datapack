execute if entity @s[predicate=rd_asset_mobs:in_hostile] on target run tag @s add zombies.target

execute if entity @s[nbt={HurtTime:10s}] run function custom_ai:custom_mobs/zombie/ent/on_hit

execute if entity @s[nbt={HurtTime:9s}] if predicate rd_asset_mobs:on_fire run function custom_ai:custom_mobs/zombie/ent/hit/on_fire

execute if predicate rd_asset_mobs:on_fire run function custom_ai:custom_mobs/zombie/ent/on_flame

tag @n[tag=zombies.target] remove zombies.target