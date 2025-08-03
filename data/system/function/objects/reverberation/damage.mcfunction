#say hi
#$say $(parent)
$execute as @e[distance=..4,tag=!RD.sonicBoom,type=!#unliving_objects,nbt=!{UUID:$(parent)}] at @s run damage @s 40 sonic_boom by @n[nbt={UUID:$(parent)}]

$execute as @a[distance=..4,nbt=!{UUID:$(parent)}] run scoreboard players set @s hb.Motion 20000
$execute as @a[distance=..4,nbt=!{UUID:$(parent)}] at @s facing entity @n[type=armor_stand,tag=RD.sonicBoom] eyes run function p_motion:main/looking

#$execute as @a[nbt={UUID:$(UUID)}] run say I DID

$execute as @e[distance=..4,tag=!RD.sonicBoom,type=!#unliving_objects,nbt=!{UUID:$(parent)}] run effect give @s slowness 5 3 true