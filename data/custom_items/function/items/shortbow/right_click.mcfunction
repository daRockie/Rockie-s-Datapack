execute if score @s item.shortBow.cooldown matches 0 if items entity @s container.* arrow at @s run function custom_items:items/shortbow/used
execute if score @s item.shortBow.cooldown matches 0 unless items entity @s container.* arrow at @s run function custom_items:items/shortbow/no_ammo
scoreboard players set @s item.shortBow.cooldown 2
advancement revoke @s only custom_items:item_used/weapons/shortbow