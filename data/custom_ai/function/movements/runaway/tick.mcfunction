$tp @n[nbt={UUID:$(linked)}] @s

# $say $(linked)

$execute unless entity @n[nbt={UUID:$(linked)}] run function custom_ai:movements/runaway/vanish with entity @s equipment.head.components."minecraft:custom_data"

damage @s 0.00000000001 mob_attack

scoreboard players add @s RD.ai_timer 1

execute if score @s RD.ai_timer matches 300.. run function custom_ai:movements/runaway/vanish with entity @s equipment.head.components."minecraft:custom_data"