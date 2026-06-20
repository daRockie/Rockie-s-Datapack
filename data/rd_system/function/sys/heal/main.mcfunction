execute store result score $.RD.internal.health RD.health run data get entity @s Health 100

execute store result score $.RD.internal.max_health RD.health run attribute @s max_health get 100

$scoreboard players set $.RD.internal.heal_amount RD.health $(heal)

scoreboard players operation $.RD.internal.heal_amount RD.health *= #const.100 RD.health

scoreboard players operation $.RD.internal.health RD.health += $.RD.internal.heal_amount RD.health

execute if score $.RD.internal.max_health RD.health < $.RD.internal.health RD.health run scoreboard players operation $.RD.internal.health RD.health = $.RD.internal.max_health RD.health

# tellraw @a [{"score":{"name":"$.RD.internal.health","objective":"RD.health"}}]

# tellraw @a [{"score":{"name":"$.RD.internal.health","objective":"health"}}]

scoreboard players operation @s ScoreToHealth = $.RD.internal.health RD.health