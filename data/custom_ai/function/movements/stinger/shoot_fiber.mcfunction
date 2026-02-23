scoreboard players set #mod6 ai_timer_tmp 6
scoreboard players set #_STINGER.SHOOTCAP RD.mobs.temp 3

scoreboard players operation #_STINGER.SHOOTCAP RD.mobs.temp += #_PROGRESSION RD.mobs.temp

scoreboard players operation @s ai_timer_tmp %= #mod6 ai_timer_tmp
#tellraw @a [{"score":{name:"@s",objective:"ai_timer_tmp"}}]

# say a

execute if score @s ai_timer_tmp matches 5 facing entity @e[tag=spider.target,limit=1,sort=nearest] eyes run function custom_ai:movements/stinger/summon_web

execute if score @s RD.temp0 > #_STINGER.SHOOTCAP RD.mobs.temp run function custom_ai:movements/bloodmother/do_spider_jump
execute if score @s RD.temp0 > #_STINGER.SHOOTCAP RD.mobs.temp run scoreboard players reset @s ai_timer
execute if score @s RD.temp0 > #_STINGER.SHOOTCAP RD.mobs.temp run scoreboard players reset @s RD.temp0
execute if score @s RD.temp0 > #_STINGER.SHOOTCAP RD.mobs.temp run playsound minecraft:entity.spider.death hostile @a ~ ~ ~ 1 0.5