tag @a[gamemode=!creative,gamemode=!spectator] add witch_target
tag @e[type=minecraft:iron_golem] add witch_target
execute as @e[type=minecraft:wolf] if data entity @s Owner run tag @s add witch_target
tag @e[type=villager] add witch_target
tag @a[gamemode=!adventure,gamemode=!survival] remove witch_target