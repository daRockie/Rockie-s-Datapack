execute as @e[type=creeper,nbt={Tags:["proceed","spawned"]}] run function custom_ai:advanced_ai/auto_explode

execute as @e[type=creeper,nbt={Tags:["nuka_c","spawned","proceed"]}] run function custom_ai:custom_mobs/nuka_creeper

execute as @e[type=minecraft:spider,tag=powered_spider] at @s if predicate useful-functions:is_dark run function custom_ai:custom_mobs/bloodmother
execute as @e[type=minecraft:spider,tag=mini_spider] at @s if predicate useful-functions:is_dark run function custom_ai:custom_mobs/mini_spider

execute as @e[type=minecraft:drowned,tag=squid_drowned,nbt={HurtTime:10s}] at @s run function custom_ai:movements/splash_ink
execute as @e[type=drowned,tag=squid_drowned] at @s run function custom_ai:custom_mobs/squid_drowned

execute as @e[type=zombie,tag=scout_z] at @s run function custom_ai:custom_mobs/scout_zombie

execute as @e[type=skeleton,tag=elite_skeleton] at @s run function custom_ai:custom_mobs/elite_skeleton

execute as @e[type=creeper,tag=speed_crp] run function custom_ai:custom_mobs/scout_creeper