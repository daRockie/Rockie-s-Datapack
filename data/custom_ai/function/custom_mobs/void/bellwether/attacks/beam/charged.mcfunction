effect give @s slowness 1000 255

tag @s add RD.void_bellwether.attack_beam.charged

execute anchored eyes facing entity @n[tag=creeper.target] feet positioned ^ ^ ^0.8 rotated as @s positioned ^ ^ ^0.2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^ ~ ~45

particle dust_color_transition{from_color:[0.75,0.0,1.0],to_color:[0.0,0.0,0.0],scale:1} ~ ~ ~ 1 1 1 0 3

execute anchored eyes run particle end_rod ^ ^ ^3
