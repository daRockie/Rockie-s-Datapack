#say hi
$execute if entity @n[distance=0.01..2,type=!#unliving_objects,tag=!RD.fiber,nbt={UUID:$(parent)}] run return fail
$execute if entity @n[distance=1..,nbt={UUID:$(parent)},type=#arthropod] unless entity @n[distance=0.0001..,type=#arthropod,predicate=summonmob_main:in_hostile_to_each_other,tag=RD.stinger,nbt={UUID:$(parent)}] if entity @n[type=#arthropod,distance=..2] run return fail
effect give @n[distance=0.001..2,tag=RD.fiber] slowness 5 0

$execute as @n[distance=..2,tag=!RD.fiber,type=!#unliving_objects,nbt=!{UUID:$(parent)}] at @s run damage @s 0.1 rd_system:bypassing_arrow by @n[nbt={UUID:$(parent)}]
#particle minecraft:poof ~ ~ ~ 0.05 0.05 0.05 0.05 5
function rd_system:objects/remove_data with entity @s
kill @s
#$execute as @a[nbt={UUID:$(UUID)}] run say I DID