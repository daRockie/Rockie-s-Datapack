data modify entity @s DeathTime set value 19
data modify entity @s DeathLootTable set value "minecraft:empty"
data modify entity @s Silent set value 1b
execute at @s run summon husk ~ ~ ~ {CustomName:[{text:"ミイラ",bold:false}],DeathLootTable:"minecraft:empty",Tags:["mummy","proceed","spawned"],equipment:{head:{id:player_head,components:{profile:{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAzMDdmNDkzZmRkYTc2ODU4ZTVkYWE1MTFlM2ZkYjRiN2VkMjQxZjdkM2E3YTIyNjU2ZWQ1YzZiYWNiZjUyIn19fQ==",name:textures}]}}}},drop_chances:{head:0f},attributes:[{id:follow_range,base:32f},{id:movement_speed,base:0.3f},{id:step_height,base:1f}],Passengers:[{id:armor_stand,Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Tags:["death_finder"]}],DeathTime:18}
tp @s ~ ~-200 ~
kill @s