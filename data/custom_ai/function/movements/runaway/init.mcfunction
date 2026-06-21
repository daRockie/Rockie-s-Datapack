#say run!

team join RD.no_friendly_fire

summon villager ~ ~ ~ {Health:1024,equipment:{head:{id:"barrier",components:{"custom_data":{"linked":""},item_model:"air",enchantments:{"custom_items:immunity_from_player_attack":1}}}},Tags:["RD.runaway_entity","RD.object"],Silent:1b,active_effects:[{id:"invisibility",duration:999999999,show_particles:false}],attributes:[{id:"knockback_resistance",base:1f},{id:"movement_speed",base:0.55f},{id:"max_health",base:1024f}],Team:"RD.no_friendly_fire"}

data modify entity @n[type=villager,tag=RD.runaway_entity] equipment.head.components."minecraft:custom_data".linked set from entity @s {}.UUID

tag @s add RD.runaway_inited

