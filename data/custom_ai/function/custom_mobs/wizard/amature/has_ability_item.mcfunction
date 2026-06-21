# say a

data modify storage rockietools:item_modifier weapon_data set from entity @s equipment.mainhand.components

item replace entity @s weapon.mainhand with bow

tag @s add RD.enemy.wizard_has_ability_item

data modify entity @s equipment.mainhand.components set from storage rockietools:item_modifier weapon_data

item modify entity @s weapon.mainhand custom_items:set_projectile_spawn
