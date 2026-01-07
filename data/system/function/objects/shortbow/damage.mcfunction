# 自爆防止
$execute if entity @n[distance=0.01..2,type=!#unliving_objects,tag=!RD.shortBow,nbt={UUID:$(parent)}] run return fail
# ゾンビ同士討ち防止（ゾンビに対して敵対状態の場合、これを解除）
$execute if entity @n[distance=1..,nbt={UUID:$(parent)},type=#zombies] unless entity @n[distance=0.0001..,type=#zombies,predicate=asset_mobs:in_hostile_to_each_other,tag=RD.archer_zombie,nbt={UUID:$(parent)}] if entity @n[type=#zombies,distance=..2] run return fail

# 自身のオーナーが最寄りのモブでない場合、実行主をオーナーとして最寄りのモブにバイパスダメージ３を付与
$execute as @n[distance=..2,tag=!RD.shortbow,type=!#unliving_objects,nbt=!{UUID:$(parent)}] at @s run damage @s 3 system:bypassing_arrow by @n[nbt={UUID:$(parent)}]
particle minecraft:poof ~ ~ ~ 0.05 0.05 0.05 0.05 5
# ヒット時、オーナーにサウンドを再生
$execute at @p[nbt={UUID:$(parent)}] run playsound minecraft:entity.experience_orb.pickup master @p[nbt={UUID:$(parent)}] ~ ~ ~ 0.5 0.5
# レジスタのデータを削除
function system:objects/remove_data with entity @s
kill @s
#$execute as @a[nbt={UUID:$(UUID)}] run say I DID