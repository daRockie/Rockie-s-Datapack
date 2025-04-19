data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
execute at @s run summon creeper ~ ~ ~ {powered:1b,Fuse:200,ExplosionRadius:100,CustomName:[{text:"ヌカクリーパー",bold:true,color:red}],CustomNameVisible:1b,Health:60,Glowing:0b,Tags:["spawned","proceed","nuka_c"],attributes:[{id:follow_range,base:100f},{id:safe_fall_distance,base:1024f},{id:knockback_resistance,base:1f},{id:burning_time,base:0f},{id:movement_speed,base:0.1f},{id:scale,base:1.25f},{id:step_height,base:1f},{id:max_health,base:60f}]}
kill @s