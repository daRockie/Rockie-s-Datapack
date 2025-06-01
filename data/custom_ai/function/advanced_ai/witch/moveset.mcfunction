# Target
execute on target run tag @s add witch.target

#ウィッチメイン処理
execute if entity @e[tag=witch.target,distance=0..8] run scoreboard players add @s ai_timer 1
execute if entity @e[tag=witch.target,distance=0..8] if score @s for matches 1.. run function custom_ai:advanced_ai/witch/pre_warp

execute if entity @s[nbt={HurtTime:5s}] run scoreboard players set @s for 8

# AI分岐
execute if entity @e[tag=witch.target,distance=0..8] if score @s[nbt={OnGround:1b}] ai_timer matches 20 run scoreboard players set @s for 8
execute if score @s ai_timer matches 30.. run scoreboard players set @s ai_timer 0

# remove Target
tag @n[tag=witch.target] remove witch.target