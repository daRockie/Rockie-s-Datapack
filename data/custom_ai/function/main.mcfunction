execute as @e[type=creeper,nbt={Tags:["proceed","spawned"]}] run function custom_ai:custom_creeper
execute as @e[type=creeper,nbt={Tags:["nuka_c","spawned","proceed"]}] run function custom_ai:nuka_creeper

execute as @e[type=minecraft:spider,tag=powered_spider] at @s if predicate useful-functions:is_dark run function custom_ai:custom_spider
execute as @e[type=minecraft:spider,tag=mini_spider] at @s if predicate useful-functions:is_dark run function custom_ai:mini_spider
execute as @e[type=minecraft:drowned,tag=squid_drowned,nbt={HurtTime:10s}] at @s run function custom_ai:splash_ink
execute as @e[type=drowned,tag=squid_drowned] at @s run function custom_ai:squid_drowned
execute as @e[type=zombie,tag=scout_z] at @s run function custom_ai:scout_zombie

execute as @e[type=creeper,tag=speed_crp] run function custom_ai:scout_creeper