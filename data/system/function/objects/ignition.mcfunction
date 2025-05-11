execute as @e[distance=..1.9,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 6 mob_attack_no_aggro by @p[distance=1..32,sort=furthest]
execute as @e[distance=2..4,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 3 mob_attack_no_aggro by @p[distance=1..32,sort=furthest]
execute as @e[distance=..4,tag=!fire_shot,type=!#unliving_objects] run data modify entity @s Fire set value 100
execute as @e[distance=..4,tag=!fire_shot,type=creeper,scores={RD.flame=1..}] run data modify entity @s ignited set value 1b
execute as @e[distance=..4,tag=!fire_shot,type=zombie,tag=boomer_zombie,scores={RD.flame=1..}] run tag @s add ignited
execute if entity @e[distance=..4,tag=!fire_shot,type=player] as @e[type=player,distance=0..4] run summon vindicator ~ ~0.5 ~ {OnGround:1b,CustomName:"ファイアリーワンドの流れ弾",Silent:1b,Invulnerable:1b,DeathLootTable:"empty",Johnny:1b,Tags:["fire","proceed","spawned"],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"minecraft:fire_aspect":2}}}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1000000,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:attack_knockback",base:0},{id:"minecraft:scale",base:0.1}]}
playsound entity.generic.explode player @a ~ ~ ~ 1 2
particle lava ~ ~ ~ 0.05 0.05 0.05 0.25 15
particle explosion ~ ~ ~ 0.05 0.05 0.05 0.25 15
fill ~4 ~-1 ~4 ~-4 ~1 ~-4 air replace #grasses destroy
kill @s