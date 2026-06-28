$summon creeper ~ ~ ~ {Silent:1b,Fuse:32767,Tags:["RD.models_follow_to","RD.initialized","$(id)","RD.on_hurt"],active_effects:[{"id":"invisibility",duration:999999999,amplifier:0,show_particles:false}],CustomName:$(name),attributes:$(args)}

tag @s add RD.initialized
$tag @s add $(id)

# execute as @n[type=creeper] run team join RD.mannequin
# team add RD.mannequin

# effect give @s invisibility infinite 0 true

$data modify entity @n[type=creeper,tag=$(id)] attributes append value {id:"knockback_resistance",base:1f}

$execute store result entity @n[type=creeper,tag=$(id)] Health float 1 run attribute @n[type=creeper,tag=$(id)] max_health get 1