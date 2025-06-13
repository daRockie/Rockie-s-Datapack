execute at @s run particle explosion ~ ~1 ~
execute at @s run particle witch ~ ~1 ~ 0.5 0.5 0.5 0.025 30
execute at @s run playsound entity.enderman.teleport player @a ~ ~ ~ 5 2
tp @s @r[distance=0.01..]
execute at @s run particle explosion ~ ~1 ~
execute at @s run playsound entity.enderman.teleport player @a ~ ~1 ~ 5 2
advancement revoke @s only custom_items:item_used/misc/warp_potion