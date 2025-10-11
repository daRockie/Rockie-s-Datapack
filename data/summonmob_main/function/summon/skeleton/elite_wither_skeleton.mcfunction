data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
execute at @s run summon wither_skeleton ~ ~ ~ {DeathLootTable:"custom_ai:elite_wither_skeleton",CustomName:[{text:"エリートウィザースケルトン"}],CanPickUpLoot:1b,Tags:["spawned","proceed","elite_skeleton"],equipment:{mainhand:{id:bow,components:{custom_data:{HasAlready:1}}},head:{id:iron_helmet}},drop_chances:{head:0f},attributes:[{id:follow_range,base:32f}]}
tp @s ~ ~-200 ~
kill @s