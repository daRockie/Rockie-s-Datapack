execute if entity @s[tag=RD.stiger.shooting] if score @s ai_timer_tmp matches 20.. run attribute @s movement_speed base set 0
execute unless entity @s[tag=RD.stiger.shooting] if score @s ai_timer_tmp matches ..20 run attribute @s movement_speed base set 0.3

# particle angry_villager ~ ~1 ~ 0.5 0.5 0.5 0.05 1

execute if entity @e[tag=spider.target,distance=0..9] run scoreboard players set @s RD.block.calculator 80
execute if entity @e[tag=spider.target,distance=0..9] run tag @s add RD.stiger.shooting
execute unless entity @e[tag=spider.target,distance=0..9] if score @s RD.block.calculator matches ..1 run tag @s remove RD.stiger.shooting

execute if score @s RD.block.calculator matches 1.. run scoreboard players remove @s RD.block.calculator 1

execute if entity @s[tag=RD.stiger.shooting] run scoreboard players add @s ai_timer 1
execute if score @s[predicate=asset_mobs:in_hostile] ai_timer matches 60.. run function custom_ai:movements/stinger/shoot_fiber

execute if entity @s[tag=RD.stiger.shooting] run scoreboard players add @s ai_timer_tmp 1
execute if score @s ai_timer_tmp matches 40.. run scoreboard players reset @s ai_timer_tmp