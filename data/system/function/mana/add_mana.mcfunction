execute if score @s mana < @s mana.max run scoreboard players add @s mana 1
$execute if entity @s[type=player] run function system:mana/bossbar/modify with storage rockietools:id data."$(UUID)"