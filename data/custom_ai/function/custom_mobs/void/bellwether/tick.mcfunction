
execute if entity @s[predicate=!rd_asset_mobs:in_hostile] if predicate {condition:"random_chance",chance:0.01} run playsound entity.enderman.ambient hostile @a ~ ~ ~ 1 1

data modify entity @s ignited set value false

particle enchant ~ ~1 ~ 0.5 0.5 0.5 0 1

particle witch ~ ~1 ~ 0.5 0.5 0.5 0 1

particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.05 1

execute if entity @a[distance=..20,gamemode=!creative,gamemode=!spectator,predicate=!rd_asset_mobs:in_hostile] as @s run scoreboard players add @s RD.ai_timer_2 1

execute if entity @s[nbt={HurtTime:10s},predicate=!rd_asset_mobs:in_hostile] run scoreboard players add @s RD.ai_timer_2 60

# say a

execute unless entity @n[tag=RD.void_bellwether,type=mannequin,distance=..1] run summon minecraft:mannequin ~ ~ ~ {active_effects:[{id:"water_breathing",show_particles:false,duration:999999999}],profile:{model:slim,properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGJkYzc3OTZiYjIxNjk1OTQwZDdiODMxYzBiNzU3MjQ5ZDNiZDBmZDYzNWJmYjAxOGZmOGZhNDMxODBhNzRkYyJ9fX0="}]},Tags:["RD.void_bellwether","RD.objectFollower","RD.object"],Health:2147483647,attributes:[{id:"max_health",base:2147483647}],equipment:\
{\
body:{id:"minecart",components:{custom_data:{damage:2,damage_type:"mob_attack",death_sound:{sound:"minecraft:entity.enderman.death",vol:"1",pitch:"0.5"}}}}\
}\
,Silent:1b,DeathTime:19,Team:"RD.mannequin"}


execute if score @s[predicate=!rd_asset_mobs:in_hostile] RD.ai_timer_2 matches 60.. run function custom_ai:custom_mobs/void/bellwether/random_warp

execute if block ~ ~ ~ water run function custom_ai:custom_mobs/void/bellwether/damage_water

# execute rotated ~3 ~3 run function custom_ai:custom_mobs/void/bellwether/particle

