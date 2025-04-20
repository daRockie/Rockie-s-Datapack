# 自動起爆
execute as @e[type=creeper,nbt={Tags:["proceed","spawned"]}] run function custom_ai:advanced_ai/auto_explode

# ヌカクリーパー
execute as @e[type=creeper,nbt={Tags:["nuka_c","spawned","proceed"]}] run function custom_ai:custom_mobs/nuka_creeper

# ブルードマザー
execute as @e[type=minecraft:spider,tag=powered_spider] at @s if predicate useful-functions:is_dark run function custom_ai:custom_mobs/bloodmother
execute as @e[type=minecraft:spider,tag=mini_spider] at @s if predicate useful-functions:is_dark run function custom_ai:custom_mobs/mini_spider

# イカドラウンド
execute as @e[type=minecraft:drowned,tag=squid_drowned,nbt={HurtTime:10s}] at @s run function custom_ai:movements/splash_ink
execute as @e[type=drowned,tag=squid_drowned] at @s run function custom_ai:custom_mobs/squid_drowned

# スカウトゾンビ
execute as @e[type=zombie,tag=scout_z] at @s run function custom_ai:custom_mobs/scout_zombie

# エリートスケルトン
execute as @e[type=skeleton,tag=elite_skeleton] at @s run function custom_ai:custom_mobs/elite_skeleton

# 村破壊ガチ勢
execute as @e[type=zombie,nbt={Tags:["spawned","proceed"]}] run data modify entity @s CanBreakDoors set value 1b
execute as @e[type=husk,nbt={Tags:["spawned","proceed"]}] run data modify entity @s CanBreakDoors set value 1b

# スカウトクリーパー
execute as @e[type=creeper,tag=speed_crp] run function custom_ai:custom_mobs/scout_creeper

# ジャンプマーカー自動処理
execute as @e[type=marker,tag=jump_marker,tag=proceed] run kill @s

# ミイラ蘇生
execute as @e[type=minecraft:armor_stand,tag=death_finder] on vehicle if entity @s[nbt={DeathTime:19s}] as @e[type=armor_stand,tag=death_finder,tag=!vehicleiskilled] run tag @s add vehicleiskilled
execute as @e[type=armor_stand,tag=death_finder,tag=vehicleiskilled,nbt={OnGround:1b}] at @s run function custom_ai:movements/mummy/mummy_revive

# 長時間友好モブが近くにいなかった場合、勝手に潜伏
execute as @e[type=husk,tag=mummy] at @s unless entity @e[tag=zombies_target,distance=0..32] run scoreboard players add @s ai_timer 1
execute as @e[type=husk,tag=mummy] if score @s ai_timer matches 300.. run kill @s

# タンクゾンビの被弾音
execute as @e[type=zombie,tag=tank,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.5

# 飛び道具はじくマン
execute as @e[tag=tank] at @s positioned ~ ~0.5 ~ run function custom_ai:movements/kill_projectile

# 蘇生中ミイラ
execute as @e[type=armor_stand,tag=mummy_reviving] at @s run function custom_ai:movements/mummy/mummy_revive_obj

# 蘇生後ミイラ
execute as @e[type=husk,tag=mummy_revived] at @s run function custom_ai:custom_mobs/scout_zombie