function summonmob_main:targets/creeper
function summonmob_main:targets/skeleton
function summonmob_main:targets/zombie
function summonmob_main:targets/eman
function summonmob_main:targets/explosive_mobs
function summonmob_main:targets/projectiles
function summonmob_main:targets/witch

# エリアエフェクトクラウドの処理
execute as @e[type=minecraft:area_effect_cloud,tag=kill_item] at @s run kill @e[type=item,distance=0..2]

# スポーン後処理
execute as @e[tag=!proceed] run function summonmob_main:system/proceed
execute as @e[tag=proceed] run scoreboard players reset @s lifeTime

# ブーマーゾンビ　召喚
execute as @e[type=minecraft:zombie,tag=!proceed,nbt={IsBaby:0b}] if score @s spawnRandom matches 0..20 run function summonmob_main:summon/summon_bz

# ブーマーミイラ　召喚
execute as @e[type=minecraft:husk,tag=!proceed,nbt={IsBaby:0b}] if score @s spawnRandom matches 0..20 run function summonmob_main:summon/summon_bm
execute as @e[type=minecraft:husk,tag=!proceed,nbt={IsBaby:1b}] if score @s spawnRandom matches 0..20 run function summonmob_main:summon/summon_bm_s

# ミイラ　召喚
execute as @e[type=minecraft:husk,tag=!proceed] if score @s spawnRandom matches 21..30 run function summonmob_main:summon/summon_mummy

# タンクゾンビ　召喚
execute as @e[type=zombie,tag=!proceed] if score @s spawnRandom matches 33..40 run function summonmob_main:summon/summon_tank_z

# スカウトクリーパー
execute as @e[type=creeper,tag=!proceed] if score @s spawnRandom matches 0..20 run function summonmob_main:summon/summon_scout_c

# ドルフィン・ライダー
execute as @e[type=dolphin,tag=!proceed] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/summon_d_rider

# イカドラウンド
execute as @e[type=squid,tag=!proceed] if score @s spawnRandom matches 0..20 run function summonmob_main:summon/summmon_squid

# スカウトゾンビ
execute as @e[type=zombie,tag=!proceed] if score @s spawnRandom matches 20..32 run function summonmob_main:summon/summon_scout_z

# ヌカクリーパー
execute as @e[type=creeper,tag=!proceed] if score @s spawnRandom matches 30..33 run function summonmob_main:summon/summon_nuka_creeper

# ベイビーブーマーゾンビ　召喚
execute as @e[type=minecraft:zombie,tag=!proceed,nbt={IsBaby:1b}] if score @s spawnRandom matches 0..10 run function summonmob_main:summon/summon_bz_baby

execute as @e[type=iron_golem] at @s run data modify entity @s AngryAt set from entity @e[type=creeper,distance=0..16,limit=1]

# 使者script
execute as @e[type=enderman,tag=elite_eman,name="最果ての地からのシ者"] if score @s ai_timer matches 60 at @s run function custom_ai:movements/sisha/1/explode
execute as @e[type=enderman,tag=elite_eman,name="最果ての地からのシ者"] if score @s ai_timer matches 80.. at @s if entity @e[tag=eman_target,limit=1,distance=0..4] run function custom_ai:movements/sisha/1/pre_explode
execute as @e[type=enderman,tag=elite_eman,name="最果ての地からのシ者"] at @s run particle witch ~ ~2 ~ 1 1 1 0.05 2
execute as @e[type=enderman,tag=elite_eman,name="最果ての地からのシ者"] at @s run particle enchant ~ ~2 ~ 0.5 0.5 0.5 0.05 3

# 見習い魔導士　召喚
execute as @e[type=minecraft:skeleton,tag=!proceed] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/summon_wz1

# エリートスケルトン　召喚
execute as @e[type=minecraft:skeleton,tag=!proceed] if score @s spawnRandom matches 15..30 run function summonmob_main:summon/summon_elite_s

# クモの親子　召喚
execute as @e[type=minecraft:spider,tag=!proceed] if score @s spawnRandom matches 0..20 run function summonmob_main:summon/summon_spiderfamily

# オブジェクトホーミング（強）
execute as @e[tag=!proceed,tag=hap_strong] at @s run function custom_ai:move_obj_strong

# オブジェクトホーミング（弱）
execute as @e[tag=!proceed,tag=homing_at_players] at @s run function custom_ai:move_object

# 骸骨騎馬戦士　召喚
execute as @e[type=minecraft:horse,tag=!proceed] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/summon_s_rider

# 最果てのシ者　召喚
execute as @e[type=minecraft:enderman,tag=!proceed] if score @s spawnRandom matches 0..10 run function summonmob_main:summon/summon_sisha1

# ガチギレエンダーマン
# execute as @e[type=enderman,tag=!elite_eman] at @s run data modify entity @s AngryAt set from entity @e[tag=eman_target,distance=0..16,limit=1] UUID

# ガチギレエンダーマン　改
execute as @e[type=enderman,tag=elite_eman] at @s run data modify entity @s AngryAt set from entity @e[tag=eman_target,distance=0..10,limit=1] UUID

# 潜水ガキ
execute as @e[type=minecraft:drowned,tag=!proceed] if score @s spawnRandom matches 0..10 run function summonmob_main:summon/summon_divingkid

# エリートダーマンのタイマー設定
execute as @e[type=enderman,tag=elite_eman] at @s if entity @e[tag=eman_target,limit=1,distance=0..32] run scoreboard players add @s ai_timer 1

# スポーン乱数
execute as @e[tag=!spawned] run function summonmob_main:system/mobspawning

# ブーマーゾンビの処理実行
execute as @e[type=minecraft:zombie,tag=boomer_zombie] at @s if entity @e[distance=0..5,tag=zombies_target,limit=1,sort=nearest] run tag @s add ignited
execute as @e[type=minecraft:zombie,tag=boomer_zombie,tag=ignited] run function custom_ai:custom_mobs/bz_script

execute as @e[type=minecraft:husk,tag=boomer_zombie] at @s if entity @e[distance=0..5,tag=zombies_target,limit=1,sort=nearest] run tag @s add ignited
execute as @e[type=minecraft:husk,tag=boomer_zombie,tag=ignited] run function custom_ai:custom_mobs/bz_script


# 見習い魔導士の処理実行
execute as @e[type=minecraft:skeleton,tag=wizard_1] if score @s mana matches 80.. at @s if entity @e[tag=skeleton_t,distance=0..3] at @s anchored feet unless block ^ ^-0.5 ^-4 #air anchored eyes if block ^ ^ ^-4 air if block ^ ^-1 ^-4 air run function custom_ai:movements/wizard/apprentice/wizard_warp
execute as @e[type=skeleton,tag=wizard_1] run scoreboard players add @s mana 0
execute as @e[type=minecraft:skeleton,tag=wizard_1] if score @s mana matches ..99 run scoreboard players add @s mana 1
execute as @e[type=skeleton,tag=wizard_1] run scoreboard players add @s mana 0

# マジック処理
scoreboard players reset @e magicTarget
execute as @e[type=pillager, tag=magic] at @s run function summonmob_main:magicloop

# Fly TNT
execute as @e[tag=flytnt,type=tnt] at @s run function summonmob_main:flytnt
execute as @e[tag=flytnt2,type=tnt] at @s run function summonmob_main:flytnt2