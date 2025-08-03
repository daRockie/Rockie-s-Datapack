#say hi
$execute if entity @n[distance=0.01..2,type=!#unliving_objects,tag=!RD.shortBow,nbt={UUID:$(UUID)}] run return fail
$execute if entity @n[distance=1..,tag=!RD.shortBow,nbt={UUID:$(UUID)},type=#zombies,sort=furthest] unless entity @n[distance=0.0001..,type=#zombies,predicate=summonmob_main:in_hostile_to_each_other,tag=RD.archer_zombie,nbt={UUID:$(UUID)}] if entity @n[type=#zombies,distance=..2] run return fail

$execute as @n[distance=..2,tag=!RD.shortbow,type=!#unliving_objects,nbt=!{UUID:$(UUID)}] at @s run damage @s 3 system:bypassing_arrow by @n[nbt={UUID:$(UUID)}]
particle minecraft:poof ~ ~ ~ 0.05 0.05 0.05 0.05 5
$execute at @p[nbt={UUID:$(UUID)}] run playsound minecraft:entity.experience_orb.pickup master @p[nbt={UUID:$(UUID)}] ~ ~ ~ 0.5 0.5
$data remove storage rockietools:uuid datas."$(UUID)"
kill @s
#$execute as @a[nbt={UUID:$(UUID)}] run say I DID