#$execute as @e[distance=..1.9,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 6 mob_attack by $(parent)
#$execute as @e[distance=2..4,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 3 mob_attack by $(parent)
#say hi
$execute as @e[distance=..4,tag=!RD.sonicBoom,type=!#unliving_objects,nbt=!{UUID:$(UUID)}] at @s run damage @s 30 sonic_boom by @n[nbt={UUID:$(UUID)}]

#$execute as @a[nbt={UUID:$(UUID)}] run say I DID

$execute as @e[distance=..2,tag=!fire_shot,type=!#unliving_objects,nbt=!{UUID:$(UUID)}] run effect give @s slowness 5 3 true