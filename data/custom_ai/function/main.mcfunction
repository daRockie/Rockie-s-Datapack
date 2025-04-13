execute as @e[type=creeper,nbt={Tags:["proceed","spawned"]}] run function custom_ai:custom_creeper

execute as @e[type=minecraft:spider,tag=powered_spider] run function custom_ai:custom_spider
execute as @e[type=minecraft:spider,tag=mini_spider] run function custom_ai:mini_spider


execute as @e[type=creeper,tag=speed_crp] run function custom_ai:scout_creeper

execute as @e[type=skeleton,tag=cyborg_s] run function custom_ai:cyborg_skeleton