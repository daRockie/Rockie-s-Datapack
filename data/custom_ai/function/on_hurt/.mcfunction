execute if entity @s[tag=RD.tank] run playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1 0.5
execute if entity @s[tag=RD.damage_player_sound] run playsound entity.player.death hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=RD.with_mannequin] run damage @n[type=mannequin,distance=..0.1] 0.0000005


execute if entity @s[tag=RD.void_bellwether] run playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 1 0.7

execute if entity @s[tag=squid_drowned,type=drowned] run function custom_ai:movements/splash_ink