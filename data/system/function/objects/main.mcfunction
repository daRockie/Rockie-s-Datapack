execute as @e[type=armor_stand,tag=fire_shot] at @s run function system:objects/fiery_wand/magic_shot with entity @s

execute as @e[type=vindicator,tag=fire] run scoreboard players add @s ai_timer 1
execute as @e[type=vindicator,tag=fire] if score @s ai_timer matches 8.. run tp @s ~ ~-200 ~
execute as @e[type=vindicator,tag=fire] if score @s ai_timer matches 8.. run kill @s

execute as @e[type=vindicator,tag=knockback] run scoreboard players add @s ai_timer 1
execute as @e[type=vindicator,tag=knockback] if score @s ai_timer matches 12.. run tp @s ~ ~-200 ~
execute as @e[type=vindicator,tag=knockback] if score @s ai_timer matches 12.. run kill @s