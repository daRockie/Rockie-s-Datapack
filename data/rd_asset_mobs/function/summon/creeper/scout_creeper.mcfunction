data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
summon creeper ~ ~ ~ {Health:10,Fuse:6,ExplosionRadius:2,CustomName:[{text:"スカウトクリーパー"}],Silent:1b,Tags:["RD.spawned","RD.initialized","RD.scout_creeper"],attributes:[{id:"step_height",base:1f},{id:movement_speed,base:0.35f},{id:follow_range,base:105f}]}
tp @s ~ ~-200 ~
kill @s