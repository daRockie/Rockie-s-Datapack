tellraw @s ["",{"text":"-80 Mana(","color":"aqua"},{"text":"残響","color":"light_purple",bold:1b},{"text":")","color":"aqua"}]
particle soul_fire_flame ~ ~ ~ 0.5 0 0.5 0.25 25
particle soul ~ ~ ~ 3 2 3 0.05 35
particle trial_spawner_detection_ominous ~ ~1 ~ 3 2 3 0 50
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 3 1
attribute @s minecraft:jump_strength base set 0
effect give @s slowness 3 100
effect give @s blindness 1 100
scoreboard players add @s abilityCooldown.reverberation 160
scoreboard players remove @s mana 80