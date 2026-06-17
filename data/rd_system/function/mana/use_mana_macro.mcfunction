$scoreboard players remove @s RD.mana $(mana)
execute if entity @s[type=!player] run return fail
function rd_system:mana/add_mana with entity @s {}
particle dust{color:[0.38,0.86,0.98],scale:1} ~ ~1 ~ 0.2 0.2 0.2 0.05 5
playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 2
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0 15
