data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
data modify entity @s DeathTime set value 19
execute at @s run summon zombie ~ ~ ~ {DeathLootTable:"custom_ai:scout_zombie",CustomName:[{text:"冒険家ゾンビ"}],Health:25,CanPickUpLoot:1b,Tags:["spawned","proceed","scout_z"],equipment:{mainhand:{id:wooden_sword},head:{id:player_head,components:{profile:{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmY3YjhlYjhkNjNlYjVlMDQ2MjA4MDk0OGMwNzhlNDllMzk5ZDdkM2M2MzI2ODdiODdhOTRkYzg0YzAwYzM4MSJ9fX0=",name:textures}]}}},legs:{id:leather_leggings}},attributes:[{id:follow_range,base:64f},{id:movement_speed,base:0.3f},{id:spawn_reinforcements,base:1f},{id:max_health,base:25f}]}
kill @s