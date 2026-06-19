# エリアエフェクトクラウドの処理
execute if entity @s[type=minecraft:area_effect_cloud,tag=kill_item] at @s run kill @e[type=item,distance=0..2]

# スポーン後処理
execute if entity @s[tag=!RD.initialized] run function rd_asset_mobs:system/proceed

# ゾンビ処理
execute if entity @s[type=#zombies] run function rd_asset_mobs:system/randomizer/zombie

# スケルトン族
execute if entity @s[type=#skeletons] run function rd_asset_mobs:system/randomizer/skeleton

# クリーパー族
execute if entity @s[type=creeper] run function rd_asset_mobs:system/randomizer/creeper

# クモの親子　召喚
execute if entity @s[type=minecraft:spider] run function rd_asset_mobs:system/randomizer/spider

# ---------------------------------------------------------------------------------------------------------------

# ドルフィン・ライダー
execute if entity @s[type=dolphin] if score @s spawnRandom matches 0..15 run function rd_asset_mobs:summon/summon_d_rider

# イカドラウンド
execute if entity @s[type=squid] if score @s spawnRandom matches 0..20 run function rd_asset_mobs:summon/summmon_squid

# ベイビーブーマーゾンビ　召喚

# エリートウィザースケルトン　召喚
execute if entity @s[type=minecraft:wither_skeleton] if score @s spawnRandom matches 0..15 run function rd_asset_mobs:summon/skeleton/elite_wither_skeleton

# 骸骨騎馬戦士　召喚
execute if entity @s[type=minecraft:horse] if score @s spawnRandom matches 0..15 run function rd_asset_mobs:summon/summon_s_rider

# 最果てのシ者　召喚
execute if entity @s[type=minecraft:enderman] if score @s spawnRandom matches 0..10 run function rd_asset_mobs:summon/sisha/1

# ガチギレエンダーマン　改
execute if entity @s[type=enderman,tag=elite_eman,predicate=!rd_asset_mobs:in_hostile] at @s run data modify entity @s angry_at set from entity @e[type=#custom_ai:inhostile,distance=0..10,limit=1] UUID

# スポーン乱数
execute if entity @s[tag=!RD.spawned] run function rd_asset_mobs:system/mobspawning