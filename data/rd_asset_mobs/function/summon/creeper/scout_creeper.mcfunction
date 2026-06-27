data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
summon creeper ~ ~ ~ {DeathTime:19,Health:8,Fuse:15,ExplosionRadius:3,CustomName:[{text:"スカウトクリーパー"}],Silent:1b,Tags:["RD.spawned","RD.initialized","RD.scout_creeper","RD.has_head_entity"],attributes:[{id:"air_drag_modifier",base:0.15f},{id:"step_height",base:1f},{id:movement_speed,base:0.35f},{id:follow_range,base:105f}],Passengers:[{id:"item_display",Tags:["RD.object","RD.head_entity"],item:{id:"player_head",components:{"profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2QyNzdiMzg2Y2I3NjA5YTgzZDAxMzk5ZjMxZGE2NjhiM2RjMzQ3ZjBkNzVjNTFiOTIzY2RmODE2NWI3MTZkIn19fQ=="}]}}},transformation:{left_rotation:[0,200,0,1],right_rotation:[0,0,0,1],translation:[0,0.1,0],scale:[1.4,1.4,1.4]}}]}
tp @s ~ ~-200 ~
kill @s