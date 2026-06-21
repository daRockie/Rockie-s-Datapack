particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 15

damage @s 0.0000001 mob_attack by @n[tag=accompany.zombie.target]

tag @s add RD.zombie_leader.buffed

attribute @s follow_range modifier add minecraft:leader_zombie_follow_range 32 add_value
attribute @s spawn_reinforcements modifier add minecraft:leader_zombie_reinforcement 0.3 add_value
particle witch ~ ~ ~ 0.5 0.5 0.5 0 15

effect give @s speed 5 0