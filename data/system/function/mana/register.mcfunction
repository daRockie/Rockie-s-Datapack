$data modify storage rockietools:id data append value "$(UUID)"
$execute store result storage rockietools:id data."$(UUID)".id int 1 run scoreboard players get @s RD.player.ID

$function system:mana/init/make_bossbar with storage rockietools:id data."$(UUID)"