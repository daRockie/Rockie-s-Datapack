tp @s ~ ~ ~ 0 0
playsound minecraft:block.end_portal_frame.fill hostile @a ~ ~ ~ 1 1
particle explosion ~ ~1 ~
particle witch ~ ~1 ~ 1 1 1 0 25
summon minecraft:parched ~ ~-0.25 ~ {Health:60,CustomNameVisible:1b,CustomName:{"text":"演武の御旗",color:gray},NoAI:1b,DeathLootTable:"minecraft:empty",DeathTime:18,active_effects:[{id:"invisibility",duration:9999999,show_particles:false}],Tags:["RD.object","RD.zombie_flag","RD.initialized","RD.spawned"],Silent:1b,attributes:[{id:"minecraft:scale",base:1.8f},{id:"max_health",base:70f}],Passengers:[{id:"armor_stand",Tags:["RD.object","RD.death_finder","DF.zombie_flag","RD.killedByPlayer"],Invisible:1b,Small:1b,attributes:[{base:100,id:"gravity"}]}],Team:"RD.type.sorcery"}
kill @e[type=item_display,distance=..3,tag=RD.zombie_flag_pre]
kill @s