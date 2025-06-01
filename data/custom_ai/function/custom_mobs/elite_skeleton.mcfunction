# AIタイマー加算
execute at @s if entity @e[tag=skeleton.target,distance=0..6,predicate=!custom_ai:has_any_projectile] run scoreboard players add @s ai_timer 1

# 近接用ステップタイマー
execute at @s if entity @e[tag=skeleton.target,distance=0..6] if score @s[predicate=!custom_ai:has_any_projectile] ai_timer_tmp matches ..80 run scoreboard players add @s ai_timer_tmp 1
scoreboard players add @s ai_timer_tmp 0

# ダメージを受けたらクールダウン減少
execute if entity @s[nbt={HurtTime:10s}] if entity @n[tag=skeleton.target,distance=0.1..,predicate=!custom_ai:has_any_projectile] run scoreboard players add @s ai_timer 35

# ステップ取り
execute if entity @s[nbt={OnGround:1b}] if entity @e[type=player,distance=0..16,sort=nearest,limit=1,predicate=!custom_ai:has_any_projectile] if score @s ai_timer matches 80.. run function custom_ai:movements/step_away

# ステップ（モブ相手）
execute if entity @s[nbt={OnGround:1b}] if entity @e[type=!wolf,type=!player,tag=skeleton.target,distance=0..16,sort=nearest,limit=1,predicate=!custom_ai:has_any_projectile] if score @s[predicate=custom_ai:has_any_projectile] ai_timer matches 60.. run function custom_ai:movements/step_away

# 追いかける
execute if entity @s[nbt={OnGround:1b}] unless items entity @s weapon.mainhand bow if entity @e[type=!wolf,tag=skeleton.target,distance=3..4.5] if score @s ai_timer matches 0..120 if score @s ai_timer_tmp matches 70.. run function custom_ai:advanced_ai/skeleton/chase_jump
execute if score @s ai_timer matches 120.. run function custom_ai:movements/step_away

# 弓→石の剣持ち替え
execute if entity @e[tag=skeleton.target,distance=0..4,type=!iron_golem] if items entity @s weapon.mainhand bow[custom_data={HasAlready:1},enchantments={}] if score @s ai_timer matches 0..40 run item replace entity @s weapon.mainhand with stone_sword[custom_data={HasAlready:1}]

# チキン野郎絶殺
execute if entity @e[tag=skeleton.target,distance=4..16,limit=1,predicate=custom_ai:has_any_projectile] if items entity @s weapon.mainhand bow[custom_data={HasAlready:1},enchantments={}] run item replace entity @s weapon.mainhand with stone_sword[custom_data={HasAlready:1}]

# 石の剣→弓持ち替え
execute if entity @e[tag=skeleton.target,distance=4..16,predicate=!custom_ai:has_any_projectile] if items entity @s weapon.mainhand stone_sword[custom_data={HasAlready:1}] run item replace entity @s weapon.mainhand with bow[custom_data={HasAlready:1},enchantments={}]