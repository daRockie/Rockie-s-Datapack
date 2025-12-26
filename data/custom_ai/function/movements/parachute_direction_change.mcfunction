execute if entity @s[predicate=summonmob_main:in_hostile] at @s[nbt={OnGround:0b}] run tp @s ~ ~ ~ facing entity @n[type=#custom_ai:inhostile,tag=creeper.target]
execute if entity @s[predicate=!summonmob_main:in_hostile] at @s[nbt={OnGround:0b}] run tp @s ~ ~ ~ facing entity @n[type=#custom_ai:inhostile,tag=!creeper.target,type=!player]
execute if entity @s[predicate=!summonmob_main:in_hostile] at @s[nbt={OnGround:0b}] run tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator]
playsound block.note_block.bit hostile @a ~ ~ ~ 1 2

#playsound block.note_block.bit hostile @a ~ ~ ~ 1 1