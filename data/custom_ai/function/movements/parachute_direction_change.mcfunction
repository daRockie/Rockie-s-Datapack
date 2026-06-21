execute if entity @s[predicate=rd_asset_mobs:in_hostile] at @s[nbt={OnGround:0b}] run tp @s ~ ~ ~ facing entity @n[type=player,predicate=!rd_system:effects/invisibility_existance,gamemode=!creative,gamemode=!spectator,tag=creeper.target]
execute if entity @s[predicate=!rd_asset_mobs:in_hostile] at @s[nbt={OnGround:0b}] run tp @s ~ ~ ~ facing entity @n[type=player,predicate=!rd_system:effects/invisibility_existance,gamemode=!creative,gamemode=!spectator,tag=!creeper.target]
execute if entity @s[predicate=!rd_asset_mobs:in_hostile] at @s[nbt={OnGround:0b}] run tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator,predicate=!rd_system:effects/invisibility_existance]
playsound block.note_block.bit hostile @a ~ ~ ~ 1 2

#playsound block.note_block.bit hostile @a ~ ~ ~ 1 1