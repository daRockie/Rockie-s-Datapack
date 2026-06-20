# particle flash{color:[0.28,0.05,0.63,1]} ^ ^ ^3

# tp @s ^ ^ ^1

$execute positioned ~-1.5 ~-1.5 ~-1.5 unless entity @n[nbt=!{UUID:$(owner)},dx=3,dy=3,dz=3,type=!#minecraft:ammos_dont_damage_to,distance=0.0001..] run return fail


$execute positioned ~-2.5 ~-2.5 ~-2.5 as @e[nbt=!{UUID:$(owner)},dx=5,dy=5,dz=5,type=!#minecraft:ammos_dont_damage_to] run damage @s $(damage) rd_system:no_bypass_magic by @n[nbt={UUID:$(owner)}]

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 0.75
playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 2 2
playsound minecraft:item.spear.hit player @a ~ ~ ~ 1 0.5
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 1 1

# playsound minecraft:entity.breeze.deflect player @a ~ ~ ~ 1 0.5
# playsound minecraft:entity.warden.attack_impact player @a ~ ~ ~ 1 2

fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #minecraft:grasses destroy

tp @s ^ ^ ^1.5

scoreboard players add @s RD.ai_timer 1

# execute if score @s RD.ai_timer matches 10.. run scoreboard players remove @s RD.ai_timer 1

particle sweep_attack ~ ~ ~ 0 0 0 2 15
particle explosion ~ ~ ~ 0 0 0 2 1
# particle portal ~ ~ ~ 3 3 3 0.05 25

# give @s iron_helmet[equippable={slot:head,asset_id:"template_skull"}] 1

execute if score @s RD.ai_timer matches 20.. run return run function rd_system:objects/thanatos_slash/explode with entity @s equipment.head.components."minecraft:custom_data".data
