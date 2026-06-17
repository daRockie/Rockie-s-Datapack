# tellraw @a [{"entity":"@s",nbt:"HurtTime"}]

# tellraw @a [{entity:"@n[type=marker]",nbt:"data"}]

particle explosion ~ ~1 ~ 0.5 0.5 0.5 1 15
particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.05 10
# particle flash{color:[0,0,0,1]} ~ ~1 ~ 0 0 0 0.05 1

particle dust{color:[0.38,0.86,0.98],scale:1} ~ ~1 ~ 0.2 0.2 0.2 0.05 5

playsound entity.firework_rocket.blast_far player @a ~ ~ ~ 5 0.5
playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 2
playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 0.5

# playsound entity.generic.explode player @a ~ ~ ~ 1 2

# $damage @s $(damage) rd_system:bypass_mob_attack by @n[nbt={UUID:$(owner)}]

$damage @s $(damage) rd_system:no_bypass_magic

$scoreboard players set @n[nbt={UUID:$(owner)}] RD.damage_dealt 0

# scoreboard players reset $.one_tick_timer ai_timer

kill @n[type=marker,tag=RD.crit_temp]