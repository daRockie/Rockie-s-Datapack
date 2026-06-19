# Target
execute on target run tag @s add witch.target

# AI分岐
execute if score @s ai_timer matches 30.. run scoreboard players reset @s ai_timer

execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s ai_timer 2

# remove Target
tag @n[tag=witch.target] remove witch.target