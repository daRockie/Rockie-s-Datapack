data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
execute at @s run summon creeper ~ ~ ~ {Health:5,Fuse:4,ExplosionRadius:2,CustomName:[{text:"スカウトクリーパー"}],Silent:1b,Tags:["spawned","proceed","RD.scout_creeper"],attributes:[{id:movement_speed,base:0.45f},{id:follow_range,base:105f}]}
tp @s ~ ~-200 ~
kill @s