execute store result score $.RD.internal.health RD.health run data get entity @s Health 1

execute store result score $.RD.internal.max_health RD.health run attribute @s max_health get 1


$scoreboard players add $.RD.internal.health RD.health $(heal)

execute if score $.RD.internal.max_health RD.health > $.RD.internal.health RD.health run scoreboard players operation $.RD.internal.health RD.health = $.RD.internal.max_health RD.health

scoreboard players operation $.RD.internal.health RD.health += $.RD.internal.max_health RD.health

# tellraw @a [{"score":{"name":"$.RD.internal.health","objective":"health"}}]

scoreboard players operation @s ScoreToHealth = $.RD.internal.health RD.health

# tellraw @a [{"score":{"name":"@s","objective":"ScoreToHealth"}}]

tellraw @s [{"text":"40",color:"aqua"},{"text":" Mana(","color":"aqua"},{"text":"息吹の香炉","color":"gold"},{"text":")","color":"aqua"}]

# effect give @s regeneration 2 2

effect give @s resistance 3 1

effect give @s absorption 2 0


function rd_system:mana/use_mana_macro {"mana":40}