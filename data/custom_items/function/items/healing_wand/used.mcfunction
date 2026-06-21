tellraw @a[distance=0.01..4] ["",{"bold":true,"color":"green","selector":"@s"},{"bold":true,"color":"green","text":"がヒーリングワンドであなたを回復させました！"}]
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1 1
playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1
playsound entity.generic.eat player @a ~ ~ ~ 1 2

tag @s add SND.healing

tag @s add RD.play_sound_function

function rd_system:sys/heal/main {"heal":3}

execute at @e[distance=0..4,type=!#custom_ai:hostile] run particle heart ~ ~2 ~ 0 0 0 1 3
execute as @e[distance=0.0000001..4,type=!#custom_ai:hostile] at @s run function custom_items:items/healing_wand/heal

particle happy_villager ~ ~1 ~ 1 1 1 0.025 25
