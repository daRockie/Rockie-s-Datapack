execute on target run tag @s add zombies.target

execute if entity @s[tag=!RD.zombie_flag_thrown] if items entity @s armor.head shield if entity @n[tag=zombies.target,distance=0..4] run function custom_ai:custom_mobs/zombie/leader/throw

execute if score @s[tag=!RD.runaway_inited] RD.health matches ..20 run function custom_ai:custom_mobs/zombie/leader/run

execute if entity @s[tag=RD.runaway_inited] if items entity @s armor.head *[item_model="air"] run particle rain ~ ~2 ~ 0.5 0.5 0.5 0.05 5

execute if items entity @s armor.head *[item_model="air"] run scoreboard players add @s RD.ai_timer 1

execute if items entity @s armor.head *[item_model="air"] if score @s RD.ai_timer matches 450.. run function custom_ai:custom_mobs/zombie/leader/refill_item
