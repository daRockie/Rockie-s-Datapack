scoreboard players set #mod2 ai_timer_tmp 3
scoreboard players set #_ARCHER.SHOOTCAP RD.mobs.temp 3

scoreboard players operation #_ARCHER.SHOOTCAP RD.mobs.temp += #_PROGRESSION RD.mobs.temp

scoreboard players operation @s ai_timer_tmp %= #mod2 ai_timer_tmp
#tellraw @a [{"score":{name:"@s",objective:"ai_timer_tmp"}}]

execute if score @s ai_timer_tmp matches 2 facing entity @e[tag=zombies.target,limit=1,sort=nearest] eyes run function custom_ai:movements/archer_zombie/summon_arrow

execute if score @s RD.temp0 > #_ARCHER.SHOOTCAP RD.mobs.temp run scoreboard players reset @s ai_timer
execute if score @s RD.temp0 > #_ARCHER.SHOOTCAP RD.mobs.temp run scoreboard players reset @s RD.temp0
execute if score @s RD.temp0 > #_ARCHER.SHOOTCAP RD.mobs.temp run playsound minecraft:block.iron_door.close hostile @a ~ ~ ~ 10 2