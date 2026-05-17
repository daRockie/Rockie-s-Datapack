
$execute if entity @n[dx=0.5,dy=0.5,dz=0.5,type=!#unliving_objects,nbt={UUID:$(owner)}] run return fail
execute as @e[distance=0.01..4,tag=!RD.fiery_wand,type=!#unliving_objects] run data modify entity @s Fire set value 100
$execute as @e[distance=..1.9,tag=!RD.fiery_wand,type=!#unliving_objects] at @s run damage @s 6 rd_system:no_bypass_magic by @p[nbt={UUID:$(owner)}]
$execute as @e[distance=2..4,tag=!RD.fiery_wand,type=!#unliving_objects] at @s run damage @s 3 rd_system:no_bypass_magic by @p[nbt={UUID:$(owner)}]

#$execute as @a[nbt={UUID:$(owner)}] run say I DID

execute as @e[distance=..4,tag=!RD.fiery_wand,type=!#unliving_objects] run effect give @s slowness 5 0 true
execute as @e[distance=..4,tag=!RD.fiery_wand,type=creeper,scores={RD.flame=1..}] run data modify entity @s ignited set value 1b
execute as @e[distance=..4,tag=!RD.fiery_wand,type=zombie,tag=RD.boomer_zombie,scores={RD.flame=1..}] run tag @s add ignited
execute if entity @e[distance=..4,tag=!RD.fiery_wand,type=player] as @e[type=player,distance=0..4] at @s facing entity @e[type=armor_stand,limit=1,sort=nearest,tag=RD.fiery_wand] feet rotated ~ 0 run summon slime ^ ^ ^ {Size:2,OnGround:1b,CustomName:"ファイアリーワンドの流れ弾",Silent:1b,Invulnerable:1b,DeathLootTable:"empty",Tags:["fire","RD.initialized","RD.spawned"],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"minecraft:fire_aspect":2}}}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1000000,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:scale",base:0.1},{id:"movement_speed",base:1}]}
playsound entity.generic.explode player @a ~ ~0.7 ~ 1 2
particle lava ~ ~0.7 ~ 0.05 0.05 0.05 0.25 15
particle explosion ~ ~0.7 ~ 0.05 0.05 0.05 0.25 15
particle ash ~ ~0.7 ~ 1 1 1 0 25
particle block{block_state:{Name:"blackstone"}} ~ ~0.7 ~ 0.5 0.5 0.5 0.05 50
fill ~4 ~-1 ~4 ~-4 ~1 ~-4 air replace #grasses destroy
fill ~4 ~-1 ~4 ~-4 ~1 ~-4 air replace light
data modify entity @s CustomNameVisible set value 1b
kill @s