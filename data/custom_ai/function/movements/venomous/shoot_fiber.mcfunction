scoreboard players set #mod6 RD.ai_timer_2 6
scoreboard players set #_STINGER.SHOOTCAP RD.mobs.temp 3

scoreboard players operation #_STINGER.SHOOTCAP RD.mobs.temp += #_PROGRESSION RD.mobs.temp

scoreboard players operation @s RD.ai_timer_2 %= #mod6 RD.ai_timer_2
#tellraw @a [{"score":{name:"@s",objective:"ai_timer_tmp"}}]

# say a

execute if score @s RD.ai_timer_2 matches 5 facing entity @e[tag=spider.target,limit=1,sort=nearest] eyes run function custom_ai:movements/venomous/summon_web

execute if score @s RD.temp0 > #_STINGER.SHOOTCAP RD.mobs.temp run function custom_ai:movements/bloodmother/do_spider_jump
execute if score @s RD.temp0 > #_STINGER.SHOOTCAP RD.mobs.temp run scoreboard players reset @s RD.ai_timer
execute if score @s RD.temp0 > #_STINGER.SHOOTCAP RD.mobs.temp run scoreboard players reset @s RD.temp0
execute if score @s RD.temp0 > #_STINGER.SHOOTCAP RD.mobs.temp run playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 1 0.5