data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b

summon silverfish ~ ~ ~ {Tags:["RD.tempest","RD.initialized","RD.spawned"],CustomName:{"text":"テンペスト",italic:false},Health:20,attributes:[{id:"scale",base:2.5f},{id:"max_health",base:20f},{id:"armor",base:12f},{id:"movement_speed",base:0.25f},{id:"knockback_resistance",base:1f}]}

tp @s ~ ~-200 ~
kill @s