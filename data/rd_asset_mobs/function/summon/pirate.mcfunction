summon oak_boat ~ ~ ~ {Tags:["RD.zombie_boat"]}

summon minecraft:mannequin ~ ~ ~ {active_effects:[{id:"water_breathing",show_particles:false,duration:999999999}],profile:{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjdiNDU3YTRlNTE0N2Y5MjA1MGVhMGUyOWJhMzE1MzdlZGY5NTZmYzMzZTVkNzI4NzUxZjExZDNlZWFmNGM3NiJ9fX0="}]},Tags:["RD.pirate","RD.objectFollower","RD.object","RD.melee"],Health:2147483647,attributes:[{id:"max_health",base:2147483647}],equipment:\
{\
body:{id:"minecart",components:{custom_data:{damage:2,damage_type:"mob_attack"}}}\
}\
}
summon minecraft:piglin_brute ~ ~ ~ {IsImmuneToZombification:1b,CustomName:"海賊",Tags:["RD.with_mannequin","RD.on_hurt","RD.spawned","RD.initialized","RD.pirate","RD.objectListener"],Silent:1b,active_effects:[{id:"invisibility",duration:999999999,show_particles:false},{id:"water_breathing",duration:999999999,show_particles:false}],attributes:[{id:"attack_damage",base:0f},{id:"scale",base:1.1f}],Passengers:[{id:"armor_stand",Invisible:1b,Small:1b,Tags:["DF.mannequin","RD.death_finder","RD.object"]}],DeathTime:18}

loot replace entity @n[type=mannequin,tag=RD.pirate] weapon loot rd_asset_mobs:starter/zombie/weapon


# summon piglin_brute ~ ~ ~ {IsImmuneToZombification:1b,CannotHunt:1b}