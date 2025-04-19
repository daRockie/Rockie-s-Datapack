data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
execute at @s run summon zombie ~ ~ ~ {DeathLootTable:"custom_ai:boomer_zombie",CustomName:[{text:"ブーマー　ゾンビ"}],Health:25,Silent:1b,Tags:["boomer_zombie","proceed","spawned"],equipment:{head:{id:tnt}},attributes:[{id:movement_speed,base:0.3f},{id:follow_range,base:2048f},{id:max_health,base:25f}],DeathTime:19}
kill @s