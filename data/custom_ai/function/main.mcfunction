# ヌカクリーパー
execute as @e[type=creeper,nbt={Tags:["nuka_c","spawned","proceed"],ignited:1b}] run function custom_ai:custom_mobs/nuka_creeper
execute as @e[type=creeper,nbt={Tags:["proceed","spawned","nuka_c"]}] at @s if entity @a[distance=0..4,gamemode=!spectator,gamemode=!creative] run data modify entity @s ignited set value 1b
execute as @e[type=creeper,nbt={Tags:["proceed","spawned","nuka_c"]}] at @s if entity @a[distance=0..4,gamemode=!spectator,gamemode=!creative] run data modify entity @s NoAI set value 1b

# クモ
execute as @e[type=minecraft:spider] at @s if entity @a[distance=..80] run function custom_ai:advanced_ai/spider/tick

# イカドラウンド
execute as @e[type=minecraft:drowned,tag=squid_drowned,nbt={HurtTime:10s}] at @s run function custom_ai:movements/splash_ink
execute as @e[type=drowned,tag=squid_drowned] at @s run function custom_ai:custom_mobs/squid_drowned

# 通常ゾンビ強化
execute as @e[type=#zombies,nbt={Tags:["spawned","proceed"]}] run data modify entity @s CanBreakDoors set value 1b
execute as @e[type=#zombies,nbt={Tags:["proceed","spawned"]}] unless data entity @s CustomName run attribute @s movement_speed base set 0.25
execute as @e[type=zombie,nbt={Tags:["proceed","spawned"]}] at @s if entity @a[distance=..80] run function custom_ai:advanced_ai/zombie/tick

# スケルトン
execute as @e[type=#skeletons] at @s if entity @a[distance=..80] run function custom_ai:advanced_ai/skeleton/tick

execute as @e[type=creeper] at @s if entity @a[distance=..80] run function custom_ai:advanced_ai/creeper/tick
execute as @e[type=creeper,tag=speed_crp] at @s run loot replace entity @s armor.head mine ~ ~-1 ~ minecraft:netherite_pickaxe

# ジャンプマーカー自動処理
execute as @e[type=marker,tag=jump_marker,tag=proceed] run kill @s

# ワープポイント処理
execute as @e[type=armor_stand,tag=spread] run scoreboard players add @s ai_timer 1
execute as @e[type=armor_stand,tag=spread] if score @s ai_timer matches 40.. run kill @s

# ミイラ蘇生
execute as @e[type=minecraft:armor_stand,tag=death_finder] on vehicle if entity @s[nbt={DeathTime:19s}] as @e[type=armor_stand,tag=death_finder,tag=!vehicleiskilled] run tag @s add vehicleiskilled
execute as @e[type=armor_stand,tag=death_finder,tag=vehicleiskilled,nbt={OnGround:1b}] at @s run function custom_ai:movements/mummy/mummy_revive

# 長時間友好モブが近くにいなかった場合、勝手に潜伏
execute as @e[type=husk,tag=mummy] at @s unless entity @e[type=#custom_ai:inhostile,distance=0..32] run scoreboard players add @s ai_timer 1
execute as @e[type=husk,tag=mummy] if score @s ai_timer matches 300.. run kill @s

# タンクゾンビの被弾音
execute as @e[type=zombie,tag=tank,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.5

# 飛び道具はじくマン
execute as @e[tag=tank] at @s positioned ~ ~0.5 ~ run function custom_ai:movements/kill_projectile

# 蘇生中ミイラ
execute as @e[type=armor_stand,tag=mummy_reviving] at @s run function custom_ai:movements/mummy/mummy_revive_obj

# 強化ウィッチ
execute as @e[type=witch,nbt={Tags:["spawned","proceed"]}] at @s if entity @a[distance=..80] run function custom_ai:advanced_ai/witch/tick

execute as @e[type=enderman] at @s if entity @s[predicate=summonmob_main:in_hostile] run function summonmob_main:targets/eman

execute as @e[type=spider] at @s if entity @s[predicate=summonmob_main:in_hostile] run function summonmob_main:targets/spider

execute as @e[type=wither_skeleton] at @s if entity @s[predicate=summonmob_main:in_hostile] run function summonmob_main:targets/wither_skeleton