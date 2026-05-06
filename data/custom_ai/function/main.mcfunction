# ヌカクリーパー
execute as @e[type=creeper,nbt={Tags:["nuka_c","RD.spawned","RD.initialized"],ignited:1b}] run function custom_ai:custom_mobs/nuka_creeper
execute as @e[type=creeper,nbt={Tags:["RD.initialized","RD.spawned","nuka_c"]}] at @s if entity @a[distance=0..4,gamemode=!spectator,gamemode=!creative] run data modify entity @s ignited set value 1b
execute as @e[type=creeper,nbt={Tags:["RD.initialized","RD.spawned","nuka_c"]}] at @s if entity @a[distance=0..4,gamemode=!spectator,gamemode=!creative] run data modify entity @s NoAI set value 1b


# 追走ボート
execute as @e[type=#boat] on controller if entity @s[tag=RD.can_controll_boat] on vehicle at @s unless block ~ ~ ~ #air if block ~ ~ ~ water anchored eyes facing entity @p eyes positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^0.9 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# クモ
execute as @e[type=#arthropod] at @s if entity @a[distance=..80] run function custom_ai:advanced_ai/spider/tick

# イカドラウンド
execute as @e[type=minecraft:drowned,tag=squid_drowned,nbt={HurtTime:10s}] at @s run function custom_ai:movements/splash_ink

# 通常ゾンビ強化

execute as @e[type=#zombies,tag=!RD.notNormal] unless data entity @s CustomName run data modify entity @s CanBreakDoors set value 1b

execute as @e[type=#zombies,tag=RD.initialized,tag=RD.spawned] at @s if entity @a[distance=..80] as @s run function custom_ai:advanced_ai/zombie/tick

# ブーマーゾンビ　処理

# スケルトン
execute as @e[type=#skeletons] at @s if entity @a[distance=..80] run function custom_ai:advanced_ai/skeleton/tick

# クリーパー
execute as @e[type=creeper] at @s if entity @a[distance=..80] run function custom_ai:advanced_ai/creeper/tick

# オブジェクト
execute as @e[tag=RD.object] at @s as @s run function custom_ai:object/

execute as @e[tag=RD.with_mannequin] at @s if entity @a[distance=..80] as @s run function custom_ai:w_mannequin/tick

# スカウトのアイテム設定
execute as @e[type=creeper,tag=RD.scout_creeper] at @s run loot replace entity @s armor.head mine ~ ~-1 ~ minecraft:netherite_pickaxe[enchantments={silk_touch:1},custom_data={"getID":true}]

# 使者
execute as @e[type=enderman,tag=elite_eman,name="最果ての地からのシ者",predicate=rd_asset_mobs:in_hostile] at @s run function custom_ai:custom_mobs/messenger/0

execute as @e[type=enderman,tag=elite_eman] at @s run function custom_ai:custom_mobs/messenger/0_particle

# ジャンプマーカー自動処理
execute as @e[type=marker,tag=jump_marker,tag=RD.initialized] run kill @s

# ワープポイント処理
execute as @e[type=armor_stand,tag=spread] run scoreboard players add @s ai_timer 1
execute as @e[type=armor_stand,tag=spread] if score @s ai_timer matches 40.. run kill @s

# ミイラ蘇生
# execute as @e[type=minecraft:armor_stand,tag=death_finder] on vehicle if entity @s[nbt={DeathTime:19s}] as @e[type=armor_stand,tag=death_finder,tag=!vehicleiskilled] run tag @s add vehicleiskilled

# 長時間友好モブが近くにいなかった場合、勝手に潜伏
execute as @e[type=husk,tag=mummy] at @s unless entity @e[type=#custom_ai:inhostile,distance=0..32] run scoreboard players add @s ai_timer 1
execute as @e[type=husk,tag=mummy] if score @s ai_timer matches 300.. run kill @s

# タンクゾンビの被弾音
execute as @e[tag=RD.on_hurt,nbt={HurtTime:9s}] at @s run function custom_ai:on_hurt/

# 蘇生中ミイラ
execute as @e[type=armor_stand,tag=mummy_reviving] at @s run function custom_ai:movements/mummy/mummy_revive_obj

# 強化ウィッチ
execute as @e[type=witch,nbt={Tags:["RD.spawned","RD.initialized"]}] at @s if entity @a[distance=..80] run function custom_ai:advanced_ai/witch/tick

execute as @e[type=enderman] at @s if entity @s[predicate=rd_asset_mobs:in_hostile] run function rd_asset_mobs:targets/eman

execute as @e[type=#arthropod] at @s if entity @s[predicate=rd_asset_mobs:in_hostile] run function rd_asset_mobs:targets/spider

execute as @e[type=wither_skeleton] at @s if entity @s[predicate=rd_asset_mobs:in_hostile] run function rd_asset_mobs:targets/wither_skeleton