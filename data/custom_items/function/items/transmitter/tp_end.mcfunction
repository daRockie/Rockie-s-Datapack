particle dust{color:[0.75,0,0.5],scale:1} ~ ~1.5 ~ 0.05 0.05 0.05 0 1
execute unless block ~ ~ ~ #custom_ai:no_collision run return run execute positioned ^ ^ ^-0.01 run function custom_items:items/transmitter/tp_end

effect give @s invisibility 1
#playsound entity.generic.explode master @a ~ ~ ~ 1 1
playsound block.respawn_anchor.charge master @a ~ ~ ~ 5 2
#execute as @e[distance=0.001..4] run damage @s 4 system:no_bypass_magic

tp @s ~ ~ ~
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
scoreboard players set @s RD.returnFunction 0