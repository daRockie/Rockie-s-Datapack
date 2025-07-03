#say a
$execute unless data storage rockietools:player data."$(UUID)" run \
data modify storage rockietools:player data append value "$(UUID)"

$execute store result storage rockietools:player data."$(UUID)".emerald double 0.01 run scoreboard players get @s RD.item.emerald

#$function custom_items:talisman/villager_artifact/power_up with storage rockietools:player data."$(UUID)".emerald