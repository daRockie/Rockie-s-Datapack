scoreboard players add @s bombTimer 1
execute at @s run particle minecraft:large_smoke ~ ~1 ~ 0.05 0 0.05 0 2 normal
execute at @s if score @s bombTimer matches 1 run playsound minecraft:item.flintandsteel.use hostile @a ~ ~ ~ 20 0.5
execute at @s if score @s bombTimer matches 1 run playsound minecraft:entity.tnt.primed hostile @a ~ ~ ~ 10 1
execute if score @s bombTimer matches 50.. run effect give @s speed 2 2
execute at @s if score @s bombTimer matches 80.. run summon tnt ~ ~ ~ {fuse:0}
execute if score @s bombTimer matches 80.. run kill @s