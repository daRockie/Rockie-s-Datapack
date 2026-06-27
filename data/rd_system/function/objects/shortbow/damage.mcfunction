# say 

playsound entity.arrow.hit hostile @a ~ ~ ~ 1 1

# ゾンビ同士討ち防止（ゾンビに対して敵対状態の場合、これを解除）
$execute if entity @n[distance=0.00001..,nbt={UUID:$(owner)},type=#zombies] unless entity @n[distance=0.0001..,type=#zombies,predicate=rd_asset_mobs:in_hostile_to_each_other,tag=RD.archer_zombie,nbt={UUID:$(owner)}] if entity @n[type=#zombies,distance=..2] run return fail

# 自身のオーナーが最寄りのモブでない場合、実行主をオーナーとして最寄りのモブにバイパスダメージ３を付与
$execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[distance=0.01..,dx=0,dy=0,dz=0,tag=!RD.shortbow,type=!#ammos_dont_damage_to,nbt=!{UUID:$(owner)}] positioned as @s run damage @s 3 rd_system:bypassing_arrow by @n[nbt={UUID:$(owner)}]
particle minecraft:poof ~ ~ ~ 0.05 0.05 0.05 0.05 5
# ヒット時、オーナーにサウンドを再生
$execute at @p[nbt={UUID:$(owner)}] run playsound minecraft:entity.experience_orb.pickup master @p[nbt={UUID:$(owner)}] ~ ~ ~ 0.5 0.5
# レジスタのデータを削除
kill @s
#$execute as @a[nbt={UUID:$(UUID)}] run say I DID