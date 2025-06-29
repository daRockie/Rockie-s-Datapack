execute store result score #_PROGRESSION RD.mobs.temp run data get storage rockietools:game_progression progress 1
tellraw @a [{"score":{"name":"#_PROGRESSION",objective:"RD.mobs.temp"}}]

execute if score #_PROGRESSION RD.mobs.temp matches 0 run data modify storage rockietools:get_id progression set value ""
execute if score #_PROGRESSION RD.mobs.temp matches 1 run data modify storage rockietools:get_id progression set value "starter"