function summonmob_main:addskeletontarget
function summonmob_main:addzombietarget

# エリアエフェクトクラウドの処理
execute as @e[type=minecraft:area_effect_cloud,tag=kill_item] at @s run kill @e[type=item,distance=0..2]

# スポーン後処理
execute as @e[tag=!proceed] run function summonmob_main:proceed
execute as @e[tag=proceed] run scoreboard players reset @s lifeTime

# ブーマーゾンビ　召喚
execute as @e[type=minecraft:zombie,tag=!proceed] if score @s spawnRandom matches 0..30 run function summonmob_main:summon_bz

# 見習い魔導士　召喚
execute as @e[type=minecraft:skeleton,tag=!proceed] if score @s spawnRandom matches 0..25 run function summonmob_main:summon_wz1

# スポーン乱数
execute as @e[tag=!spawned] run function summonmob_main:mobspawning

# ブーマーゾンビの処理実行
execute as @e[type=minecraft:zombie,tag=boomer_zombie] at @s if entity @e[distance=0..5,tag=zombies_target,limit=1,sort=nearest] run tag @s add ignited
execute as @e[type=minecraft:zombie,tag=boomer_zombie,tag=ignited] run function summonmob_main:bz_script

# 見習い魔導士の処理実行
execute as @e[type=minecraft:skeleton,tag=wizard_1] if score @s bombTimer matches 80.. at @s if entity @e[tag=skeleton_t,distance=0..3] at @s anchored feet unless block ^ ^-0.5 ^-4 #air anchored eyes if block ^ ^ ^-4 air run function summonmob_main:wz1_script

execute as @e[type=minecraft:skeleton,tag=wizard_1,tag=ability] if score @s bombTimer matches ..99 run scoreboard players add @s bombTimer 1

execute as @e[type=minecraft:skeleton,tag=wizard_1,tag=!ability] run function summonmob_main:wz1_spawn