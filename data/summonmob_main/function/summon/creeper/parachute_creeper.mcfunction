data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "minecraft:empty"
execute at @s run summon creeper ~ ~30 ~ {CustomName:{"text":"パラシュートクリーパー"},FallFlying:1b,Tags:["spawned","proceed","RD.parachute_creeper"],attributes:[{id:follow_range,base:853f}],equipment:{chest:{id:"minecraft:elytra"}},Fuse:30,Passengers:[{id:"chicken",DeathLootTable:"minecraft:empty"}],ExplosionRadius:5}
tp @s ~ ~-200 ~
kill @s