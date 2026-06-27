$summon tnt ~ ~1 ~ {explosion_power:1,owner:$(UUID),fuse:0}

$execute as @e[distance=0..5,nbt=!{UUID:$(UUID)}] run damage @s 20 explosion by @n[nbt={UUID:$(UUID)}]

particle explosion_emitter ~ ~ ~ 0.5 0.5 0.5 0.05 3
particle witch ~ ~ ~ 0.5 0.5 0.5 10 25
particle reverse_portal ~ ~ ~ 0.5 0.5 0.5 10 25
particle firework ~ ~ ~ 0.5 0.5 0.5 0.5 25

item replace entity @s weapon.mainhand with air


scoreboard players reset @s RD.ai_timer
scoreboard players reset @s RD.mobs.temp