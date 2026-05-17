playsound item.mace.smash_ground_heavy player @a ~ ~ ~ 3 2
playsound entity.player.attack.sweep player @a ~ ~ ~ 3 0.5

particle dust_color_transition{from_color:2,scale:3,to_color:215151325} ~ ~ ~ 0.5 0.5 0.5 1 15
particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 1 15

$execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[nbt=!{UUID:$(owner)},dx=5,dy=5,dz=5] run damage @s 25 rd_system:no_bypass_magic by @n[nbt={UUID:$(owner)}]
kill @s