data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
summon creeper ~ ~ ~ {"DeathLootTable":"entities/enderman",Silent:1b,Health:35,Fuse:32767,ExplosionRadius:0,CustomName:[{text:"奈落の先導者"}],Silent:1b,Tags:["RD.spawned","RD.initialized","RD.void_bellwether","RD.with_mannequin","RD.objectListener","RD.on_hurt"],attributes:[{id:"max_health",base:40},{id:"knockback_resistance",base:0.7f},{id:movement_speed,base:0.4f},{id:follow_range,base:105f},{id:"scale",base:1.12f}],active_effects:[{id:"invisibility",duration:1000000000,show_particles:false}],DeathTime:18,Passengers:[{id:"armor_stand",Invisible:1b,Small:1b,Tags:["DF.mannequin","RD.death_finder","RD.object"]}]}
summon minecraft:mannequin ~ ~ ~ {active_effects:[{id:"water_breathing",show_particles:false,duration:999999999}],profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGJkYzc3OTZiYjIxNjk1OTQwZDdiODMxYzBiNzU3MjQ5ZDNiZDBmZDYzNWJmYjAxOGZmOGZhNDMxODBhNzRkYyJ9fX0="}]},Tags:["RD.void_bellwether","RD.objectFollower","RD.object"],Health:2147483647,attributes:[{id:"max_health",base:2147483647}],equipment:\
{\
body:{id:"minecart",components:{custom_data:{damage:2,damage_type:"mob_attack",death_sound:{sound:"minecraft:entity.enderman.death",vol:"1",pitch:"0.5"}}}}\
}\
,Silent:1b,DeathTime:19}

tp @s ~ ~-200 ~
kill @s