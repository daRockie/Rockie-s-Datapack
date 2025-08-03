execute if score @s RD.item.RC matches 0 unless score @s mana matches 80.. run function custom_items:items/not_enough_mana
execute if score @s RD.item.RC matches 0 unless score @s abilityCooldown.reverberation matches 0 if score @s mana matches 80.. run function custom_items:items/on_cooldown
scoreboard players set @s RD.item.RC 2
advancement revoke @s only custom_items:item_used/weapons/reverberation
execute if score @s RD.item.RC matches 2 if score @s abilityCooldown.reverberation matches 0 if score @s mana matches 80.. run function custom_items:items/grimoire/reverberation/used
