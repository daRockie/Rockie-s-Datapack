execute as @e at @s if entity @a[distance=..80] as @s run function system:mana/main
function system:objects/main

# execute as @a at @s run tag @e[distance=0.01..32] add find_looking.candidate
# execute as @a at @s run function find_looking:find
# tag @e remove find_looking.candidate