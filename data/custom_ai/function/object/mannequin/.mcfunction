
execute anchored eyes if block ~ ~1 ~ water run data modify entity @s pose set value "swimming"
execute anchored eyes unless block ~ ~1 ~ water run data modify entity @s pose set value "standing"