# エリアエフェクトクラウドの処理
execute if entity @s[type=minecraft:area_effect_cloud,tag=kill_item] at @s run kill @e[type=item,distance=0..2]

# スポーン後処理
execute if entity @s[tag=!proceed] run function summonmob_main:system/proceed
execute if entity @s[tag=proceed] run scoreboard players reset @s lifeTime

# ゾンビ処理
execute if entity @s[tag=!proceed,type=#zombies] run function summonmob_main:system/randomizer/zombie

# スカウトクリーパー
execute if entity @s[type=creeper,tag=!proceed] if score @s spawnRandom matches 0..20 run function summonmob_main:summon/summon_scout_c

# ドルフィン・ライダー
execute if entity @s[type=dolphin,tag=!proceed] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/summon_d_rider

# イカドラウンド
execute if entity @s[type=squid,tag=!proceed] if score @s spawnRandom matches 0..20 run function summonmob_main:summon/summmon_squid

# アーチャーゾンビ

# ヌカクリーパー
execute if entity @s[type=creeper,tag=!proceed] if score @s spawnRandom matches 30..33 run function summonmob_main:summon/summon_nuka_creeper

# ベイビーブーマーゾンビ　召喚

# ベイビーブーマーゾンビジョッキー　召喚
execute if entity @s[type=minecraft:zombie,tag=!proceed,nbt={IsBaby:1b}] if score @s spawnRandom matches 0..10 on vehicle if entity @s[type=chicken] run function summonmob_main:summon/summon_bz_jockey

# 見習い魔導士　召喚
execute if entity @s[type=minecraft:skeleton,tag=!proceed] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/wizard/apprentice

# エリートスケルトン　召喚
execute if entity @s[type=minecraft:skeleton,tag=!proceed] if score @s spawnRandom matches 15..30 run function summonmob_main:summon/summon_elite_s

# エリートウィザースケルトン　召喚
execute if entity @s[type=minecraft:wither_skeleton,tag=!proceed] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/summon_elite_wither_skeleton

# クモの親子　召喚
execute if entity @s[type=minecraft:spider,tag=!proceed] if score @s spawnRandom matches 0..20 run function summonmob_main:summon/summon_spiderfamily

# オブジェクトホーミング（強）
execute if entity @s[tag=!proceed,tag=hap_strong] at @s run function custom_ai:move_obj_strong

# オブジェクトホーミング（弱）
execute if entity @s[tag=!proceed,tag=homing_at_players] at @s run function custom_ai:move_object

# 骸骨騎馬戦士　召喚
execute if entity @s[type=minecraft:horse,tag=!proceed] if score @s spawnRandom matches 0..15 run function summonmob_main:summon/summon_s_rider

# 最果てのシ者　召喚
execute if entity @s[type=minecraft:enderman,tag=!proceed] if score @s spawnRandom matches 0..10 run function summonmob_main:summon/sisha/1

# ガチギレエンダーマン
# execute as @e[type=enderman,tag=!elite_eman] at @s run data modify entity @s AngryAt set from entity @e[tag=eman_target,distance=0..16,limit=1] UUID

# ガチギレエンダーマン　改
execute if entity @s[type=enderman,tag=elite_eman,predicate=!summonmob_main:in_hostile] at @s run data modify entity @s AngryAt set from entity @e[type=#custom_ai:inhostile,distance=0..10,limit=1] UUID

# 潜水ガキ
execute if entity @s[type=minecraft:drowned,tag=!proceed] if score @s spawnRandom matches 0..10 run function summonmob_main:summon/summon_divingkid

# スポーン乱数
execute if entity @s[tag=!spawned] run function summonmob_main:system/mobspawning

# 見習い魔導士の処理実行


# マジック処理
scoreboard players reset @e magicTarget
execute as @e[type=pillager, tag=magic] at @s run function summonmob_main:magicloop

# Fly TNT
execute as @e[tag=flytnt,type=tnt] at @s run function summonmob_main:flytnt
execute as @e[tag=flytnt2,type=tnt] at @s run function summonmob_main:flytnt2