data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:flame},Radius:0,Duration:4,Tags:["kill_item"]}
execute at @s run summon creeper ~ ~ ~ {Health:5,Fuse:4,ExplosionRadius:2,CustomName:[{text:"スカウトクリーパー"}],Silent:1b,Tags:["spawned","proceed","speed_crp"],attributes:[{id:movement_speed,base:0.5f},{id:follow_range,base:105f},{id:step_height,base:2f}]}
kill @s