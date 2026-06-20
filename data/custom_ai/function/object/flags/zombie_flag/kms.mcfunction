data modify entity @s DeathLootTable set value "minecraft:empty"
execute on passengers run tag @s remove RD.killedByPlayer
scoreboard players reset @s RD.ai_timer
kill @s