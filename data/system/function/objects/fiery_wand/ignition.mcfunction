#$execute as @e[distance=..1.9,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 6 mob_attack by $(parent)
#$execute as @e[distance=2..4,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 3 mob_attack by $(parent)
$execute if entity @n[distance=0.01..2,type=!#unliving_objects,tag=!RD.shortBow,nbt={UUID:$(UUID)}] run return fail
$execute as @e[distance=..1.9,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 6 mob_attack by @p[nbt={UUID:$(UUID)}]
$execute as @e[distance=2..4,tag=!fire_shot,type=!#unliving_objects] at @s run damage @s 3 mob_attack by @p[nbt={UUID:$(UUID)}]

#$execute as @a[nbt={UUID:$(UUID)}] run say I DID

execute as @e[distance=..4,tag=!fire_shot,type=!#unliving_objects] run data modify entity @s Fire set value 100
execute as @e[distance=..4,tag=!fire_shot,type=!#unliving_objects] run effect give @s slowness 5 0 true
execute as @e[distance=..4,tag=!fire_shot,type=creeper,scores={RD.flame=1..}] run data modify entity @s ignited set value 1b
execute as @e[distance=..4,tag=!fire_shot,type=zombie,tag=RD.boomer_zombie,scores={RD.flame=1..}] run tag @s add ignited
execute if entity @e[distance=..4,tag=!fire_shot,type=player] as @e[type=player,distance=0..4] at @s facing entity @e[type=armor_stand,limit=1,sort=nearest,tag=fire_shot] feet rotated ~ 0 run summon vindicator ^ ^ ^2 {OnGround:1b,CustomName:"ファイアリーワンドの流れ弾",Silent:1b,Invulnerable:1b,DeathLootTable:"empty",Johnny:1b,Tags:["fire","proceed","spawned"],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"minecraft:fire_aspect":2}}}},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1000000,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:scale",base:0.1},{id:"movement_speed",base:1}]}
playsound entity.generic.explode player @a ~ ~0.7 ~ 1 2
particle lava ~ ~0.7 ~ 0.05 0.05 0.05 0.25 15
particle explosion ~ ~0.7 ~ 0.05 0.05 0.05 0.25 15
particle ash ~ ~0.7 ~ 1 1 1 0 25
particle block{block_state:{Name:"blackstone"}} ~ ~0.7 ~ 0.5 0.5 0.5 0.05 50
fill ~4 ~-1 ~4 ~-4 ~1 ~-4 air replace #grasses destroy
fill ~4 ~-1 ~4 ~-4 ~1 ~-4 air replace light
data modify entity @s CustomNameVisible set value 1b
function system:objects/remove_data with entity @s
kill @s