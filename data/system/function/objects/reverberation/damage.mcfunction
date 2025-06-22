#$execute as @e[distance=..1.9,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 6 mob_attack by $(parent)
#$execute as @e[distance=2..4,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 3 mob_attack by $(parent)
#say hi
$execute as @e[distance=..4,tag=!RD.sonicBoom,type=!#unliving_objects,nbt=!{UUID:$(UUID)}] at @s run damage @s 40 sonic_boom by @n[nbt={UUID:$(UUID)}]

$execute as @a[distance=..4,nbt=!{UUID:$(UUID)}] run scoreboard players set @s hb.Motion 20000
$execute as @a[distance=..4,nbt=!{UUID:$(UUID)}] at @s facing entity @n[type=armor_stand,tag=RD.sonicBoom] eyes run function p_motion:main/looking

#$execute as @a[nbt={UUID:$(UUID)}] run say I DID

$execute as @e[distance=..4,tag=!RD.sonicBoom,type=!#unliving_objects,nbt=!{UUID:$(UUID)}] run effect give @s slowness 5 3 true