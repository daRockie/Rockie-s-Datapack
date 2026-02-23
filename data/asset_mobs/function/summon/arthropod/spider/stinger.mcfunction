data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
summon spider ~ ~ ~ {CustomName:"スティンガー",Health:16,Tags:["RD.stinger","spawned","proceed"]}
tp @s ~ ~-200 ~
kill @s