execute if entity @s[predicate=rd_asset_mobs:in_hostile] if predicate {condition:"random_chance",chance:0.01} run playsound entity.enderman.ambient hostile @a ~ ~ ~ 1 1

data modify entity @s ignited set value false

particle enchant ~ ~1 ~ 0.5 0.5 0.5 0 1

particle witch ~ ~1 ~ 0.5 0.5 0.5 0 1

particle ash ~ ~1 ~ 0.5 0.5 0.5 0.05 1

execute if entity @a[distance=..20] as @s run scoreboard players add @s RD.ai_timer_2 1

execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s RD.ai_timer_2 60

# say a

execute if score @s RD.ai_timer_2 matches 120.. run function custom_ai:custom_mobs/void/bellwether/random_warp

execute if block ~ ~ ~ water run function custom_ai:custom_mobs/void/bellwether/damage_water

# execute rotated ~3 ~3 run function custom_ai:custom_mobs/void/bellwether/particle