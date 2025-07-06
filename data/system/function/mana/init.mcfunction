#say hi
scoreboard players operation @s RD.player.ID = #ID RD.player.ID

function system:mana/register with entity @s {}

tag @s add RD.mana.init
scoreboard players add #ID RD.player.ID 1