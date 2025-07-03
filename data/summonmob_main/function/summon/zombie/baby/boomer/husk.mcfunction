data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
execute at @s run summon husk ~ ~ ~ {DeathLootTable:"custom_ai:boomer_zombie",CustomName:[{text:"ベビー　ブーマーハスク"}],IsBaby:1b,Health:25,Silent:1b,Tags:["RD.boomer_zombie","proceed","spawned"],equipment:{head:{id:player_head,components:{profile:{name:"MHF_TNT2"}}}},attributes:[{id:movement_speed,base:0.3f},{id:follow_range,base:2048f},{id:max_health,base:25f}],DeathTime:19}
tp @s ~ ~-200 ~
kill @s