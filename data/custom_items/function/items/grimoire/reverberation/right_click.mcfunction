advancement revoke @s only custom_items:item_used/weapons/reverberation
execute unless score @s mana matches 80.. run return run function custom_items:items/not_enough_mana
execute unless score @s abilityCooldown.reverberation matches 0 run return run function custom_items:items/on_cooldown
function custom_items:items/grimoire/reverberation/used
