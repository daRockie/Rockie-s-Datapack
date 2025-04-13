execute store result score @s tntFuse run data get entity @s fuse

execute if score @s tntFuse matches 20 run data modify entity @s Motion[1] set value 3f
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[0.5f, 0.0f, 1.25f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[0.0f, 0.0f, 1.5f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[-0.5f, 0.0f, 1.25f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[-1.0f, 0.0f, 1.0f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[-1.25f, 0.0f, 0.5f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[-1.5f, 0.0f, 0.0f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[-1.25f, 0.0f, -0.5f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[-1.0f, 0.0f, -1.0f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[-0.5f, 0.0f, -1.25f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[0.0f, 0.0f, -1.5f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[0.5f, 0.0f, -1.25f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[1.0f, 0.0f, -1.0f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[1.25f, 0.0f, -0.5f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[1.5f, 0.0f, 0.0f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[1.25f, 0.0f, 0.5f]}
execute if score @s tntFuse matches 1 run summon tnt ~ ~ ~ {Tags:[flytnt2],fuse:20, Motion:[1.0f, 0.0f, 1.0f]}