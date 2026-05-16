# scoreboard players reset $Global_timer.ORE_GENERATE ai_timer

# tellraw @a [{"text":"Attempting to generate ore...", "color":"gray", "italic":1b}]
# execute if entity @a[gamemode=survival] run tellraw @a [{"text":"Players in survival mode: ",color:gray,italic:1b,extra:[{"selector":"@a[gamemode=survival]"}]}]
# execute unless entity @a[gamemode=survival] run tellraw @a [{"text":"No Player","color":"gray",italic:1b}]

stopwatch restart rd._global.ore_generation
execute as @a[gamemode=survival] at @s positioned ~ ~-5 ~ run function rd_system:sys/all