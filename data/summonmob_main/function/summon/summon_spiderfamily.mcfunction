data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:trial_spawner_detection},Radius:0,Duration:4,Tags:["kill_item"]}
execute at @s run summon spider ~ ~ ~ {Tags:["spawned","proceed","powered_spider"],NoGravity:0b,Health:30f,Passengers:[{id:"minecraft:spider",attributes:[{id:"minecraft:scale",base:0.6}]}],attributes:[{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.4}]}
tp @s ~ ~-200 ~
kill @s