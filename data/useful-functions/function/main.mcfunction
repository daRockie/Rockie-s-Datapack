execute as @a at @s run function useful-functions:campfire
execute as @a run function useful-functions:mining_helmet
execute as @a if predicate useful-functions:anti_exp_shield at @s if entity @e[tag=explosive_mobs,distance=0..8] run function useful-functions:buff_aes