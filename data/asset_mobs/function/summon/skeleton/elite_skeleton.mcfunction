data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
execute at @s run summon skeleton ~ ~ ~ {DeathLootTable:"custom_ai:elite_skeleton",CustomName:[{text:"エリートスケルトン"}],CanPickUpLoot:1b,Tags:["spawned","proceed","elite_skeleton"],equipment:{mainhand:{id:bow,components:{custom_data:{HasAlready:1}}},head:{id:iron_helmet}},attributes:[{id:follow_range,base:32f}]}
tp @s ~ ~-200 ~
kill @s