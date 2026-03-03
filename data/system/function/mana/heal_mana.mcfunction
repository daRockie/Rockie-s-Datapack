$scoreboard players add @s RD.mana $(mana)
execute if entity @s[type=!player] run return fail
function system:mana/add_mana with entity @s {}
particle dust{color:[0.38,0.86,0.98],scale:1} ~ ~1 ~ 0.2 0.2 0.2 0.05 5
playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.5 2