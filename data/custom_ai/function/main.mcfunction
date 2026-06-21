# 追走ボート
execute as @e[type=#boat] on controller if entity @s[tag=RD.can_controll_boat] on vehicle at @s unless block ~ ~ ~ #air if block ~ ~ ~ water anchored eyes facing entity @p eyes positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^0.9 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# クモ
execute as @e[type=#custom_ai:hostile] at @s if entity @a[distance=..80] as @s run function custom_ai:enemy_movements

# オブジェクト
execute as @e[tag=RD.object] at @s as @s run function custom_ai:object/


# 被弾時呼び出し
execute as @e[tag=RD.on_hurt,nbt={HurtTime:9s}] at @s as @s run function custom_ai:on_hurt/

# 強化ウィッチ
execute as @e[type=wither_skeleton] at @s if entity @s[predicate=rd_asset_mobs:in_hostile] run function rd_asset_mobs:targets/wither_skeleton