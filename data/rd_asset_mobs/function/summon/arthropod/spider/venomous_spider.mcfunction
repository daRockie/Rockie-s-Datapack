data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
summon spider ~ ~ ~ {DeathLootTable:"custom_ai:monster/arthropod/spider/venomous",CustomName:"ヴェノモス",Health:18,Tags:["RD.venomous","RD.spawned","RD.initialized"],equipment:{mainhand:{id:"barrier",components:{"weapon":{disable_blocking_for_seconds:1}}}},drop_chances:{mainhand:0f},attributes:[{base:32,id:"follow_range"},{id:"max_health","base":18},{id:"attack_knockback",base:1},{id:"jump_strength",base:1.2},{id:"safe_fall_distance",base:100000},{base:4f,id:"attack_damage"}]}
tp @s ~ ~-200 ~
kill @s

