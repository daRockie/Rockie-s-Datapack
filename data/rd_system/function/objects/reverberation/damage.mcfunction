#say hi
#$say $(parent)
$execute as @e[distance=..4,tag=!RD.sonicBoom,type=!#unliving_objects,nbt=!{UUID:$(parent)}] at @s run damage @s 40 sonic_boom by @n[nbt={UUID:$(parent)}]

#$execute as @a[nbt={UUID:$(UUID)}] run say I DID

$execute as @e[distance=..4,tag=!RD.sonicBoom,type=!#unliving_objects,nbt=!{UUID:$(parent)}] run effect give @s slowness 5 3 true