execute on target run tag @s add accompany.zombie.target

playsound minecraft:entity.zombie_horse.death hostile @a ~ ~ ~ 1 1

damage @s 0.000000000001 mob_attack_no_aggro

particle witch ~ ~ ~ 0.5 0.5 0.5 0 15

execute as @e[type=#minecraft:zombies,distance=0.01..16,tag=!RD.zombie_leader.buffed] as @s at @s run function custom_ai:custom_mobs/zombie/leader/accompany_buff

tag @n[tag=accompany.zombie.target] remove accompany.zombie.target