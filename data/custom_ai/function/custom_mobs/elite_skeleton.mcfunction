execute at @s if entity @e[tag=skeleton_t,distance=0..6] run scoreboard players add @s ai_timer 1
execute if entity @s[nbt={OnGround:1b}] if entity @e[type=player,distance=0..16,sort=nearest,limit=1,predicate=!custom_ai:has_any_projectile] if score @s ai_timer matches 60.. run function custom_ai:movements/step_away
execute if entity @s[nbt={OnGround:1b}] if entity @e[tag=skeleton_t,distance=0..16,sort=nearest,limit=1] if score @s ai_timer matches 60.. run function custom_ai:movements/step_away
execute if entity @s[nbt={OnGround:1b}] if items entity @s weapon.mainhand stone_sword[custom_data={HasAlready:1}] if entity @e[tag=skeleton_t,distance=4..5] if score @s ai_timer matches 0..40 run function custom_ai:movements/chase_jump
execute if entity @s[nbt={OnGround:1b}] if entity @e[tag=projectile,distance=..3,nbt={inGround:0b}] run function custom_ai:movements/parry_random

execute if entity @e[tag=skeleton_t,distance=0..4,type=!iron_golem] if items entity @s weapon.mainhand bow[custom_data={HasAlready:1}] if score @s ai_timer matches 0..40 run item replace entity @s weapon.mainhand with stone_sword[custom_data={HasAlready:1}]
execute if entity @e[tag=skeleton_t,distance=4..16,limit=1,predicate=custom_ai:has_any_projectile] if items entity @s weapon.mainhand bow[custom_data={HasAlready:1}] run item replace entity @s weapon.mainhand with stone_sword[custom_data={HasAlready:1}]
execute if entity @e[tag=skeleton_t,distance=4..16,predicate=!custom_ai:has_any_projectile] if items entity @s weapon.mainhand stone_sword[custom_data={HasAlready:1}] run item replace entity @s weapon.mainhand with bow[custom_data={HasAlready:1}]
