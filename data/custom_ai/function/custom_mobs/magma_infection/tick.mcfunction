particle large_smoke ~ ~1 ~ 0.05 0.05 0.05 0 1

effect give @s fire_resistance

execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.5