execute if score @s RD.mana < @s RD.mana.max run scoreboard players add @s RD.mana 1
$execute if entity @s[type=player] run function rd_system:mana/bossbar/modify with storage rockietools:id data."$(UUID)"
