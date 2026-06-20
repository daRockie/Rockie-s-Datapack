scoreboard players reset @s spawnRandom
scoreboard players reset @s RD.mana
scoreboard players reset @s RD.mana.max
scoreboard players reset @s RD.ai_timer

data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
data modify entity @s DeathTime set value 19
data modify entity @s PersistenceRequired set value 1b

tp @s ~ ~-200 ~
kill @s