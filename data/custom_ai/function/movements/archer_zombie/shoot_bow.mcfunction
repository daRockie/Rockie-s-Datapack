scoreboard players set #mod2 RD.ai_timer_2 3
scoreboard players set #_ARCHER.SHOOTCAP RD.mobs.temp 3

scoreboard players operation #_ARCHER.SHOOTCAP RD.mobs.temp += #_PROGRESSION RD.mobs.temp

scoreboard players operation @s RD.ai_timer_2 %= #mod2 RD.ai_timer_2
#tellraw @a [{"score":{name:"@s",objective:"ai_timer_tmp"}}]

execute if score @s RD.ai_timer_2 matches 2 facing entity @n[tag=zombies.target,sort=nearest] eyes anchored eyes run function custom_ai:movements/archer_zombie/summon_arrow with entity @s {}

execute if score @s RD.temp0 > #_ARCHER.SHOOTCAP RD.mobs.temp run scoreboard players reset @s RD.ai_timer
execute if score @s RD.temp0 > #_ARCHER.SHOOTCAP RD.mobs.temp run scoreboard players reset @s RD.temp0
execute if score @s RD.temp0 > #_ARCHER.SHOOTCAP RD.mobs.temp run playsound minecraft:block.iron_door.close hostile @a ~ ~ ~ 10 2