data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
execute at @s run summon chicken ~ ~ ~ {IsChickenJockey:1b,Passengers:[{id:zombie,IsBaby:1b,CustomName:[{text:"ベビーブーマーゾンビ"}],Health:25,Silent:1b,Tags:["RD.notNormal","spawned","proceed","boomer_zombie"],equipment:{head:{id:tnt}},drop_chances:{head:0f},attributes:[{id:max_health,base:25f}]}],DeathTime:19,DeathLootTable:"custom_ai:boomer_zombie"}
tp @s ~ ~-200 ~
kill @e[distance=0..1,type=zombie,tag=!proceed]