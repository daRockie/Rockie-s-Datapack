execute as @n[tag=RD.objectFollower] at @n[tag=RD.objectListener,type=!#minecraft:unliving_objects] run tp @s ~ ~ ~ ~15 ~
# execute on vehicle if entity @s[type=!mannequin] on controller run return run data modify entity @n[type=mannequin] pose set value "standing"

execute if entity @s[predicate=rd_asset_mobs:in_hostile] run function custom_ai:w_mannequin/hostile
