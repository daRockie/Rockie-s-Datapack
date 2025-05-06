# AIタイマー加算
execute at @s if entity @e[tag=skeleton_t,distance=0..6] run scoreboard players add @s ai_timer 1

# ダメージを受けたらクールダウン現象
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s ai_timer 35

# 自分に攻撃してきたモブに敵対
execute on attacker run tag @s add wither_skeleton.target

# ステップ取り
execute if entity @s[nbt={OnGround:1b}] if entity @e[type=player,distance=0..16,sort=nearest,limit=1,predicate=!custom_ai:has_any_projectile] if score @s ai_timer matches 60.. run function custom_ai:movements/step_away

# ステップ（モブ相手）
execute if entity @s[nbt={OnGround:1b}] if entity @e[type=!player,tag=wither_skeleton.target,distance=0..16,sort=nearest,limit=1] anchored feet if block ^ ^ ^-6 #air if score @s ai_timer matches 60.. run function custom_ai:movements/step_away

# 追いかける
execute if entity @s[nbt={OnGround:1b}] unless items entity @s weapon.mainhand bow if entity @e[type=!wolf,tag=wither_skeleton.target,distance=4..5] if score @s ai_timer matches 0..40 run function custom_ai:movements/chase_jump

# 飛び道具回避
execute if entity @s[nbt={OnGround:1b}] if entity @e[tag=projectile,distance=2..3,nbt={inGround:0b}] run function custom_ai:movements/chase_jump

# 弓→石の剣持ち替え
execute if entity @e[tag=skeleton_t,distance=0..4,type=!iron_golem] if items entity @s weapon.mainhand bow[custom_data={HasAlready:1},enchantments={}] if score @s ai_timer matches 0..40 run item replace entity @s weapon.mainhand with stone_sword[custom_data={HasAlready:1}]

# チキン野郎絶殺
execute if entity @e[tag=skeleton_t,distance=4..16,limit=1,predicate=custom_ai:has_any_projectile] if items entity @s weapon.mainhand bow[custom_data={HasAlready:1},enchantments={}] run item replace entity @s weapon.mainhand with stone_sword[custom_data={HasAlready:1}]

# 石の剣→弓持ち替え
execute if entity @e[tag=skeleton_t,distance=4..16,predicate=!custom_ai:has_any_projectile] if items entity @s weapon.mainhand stone_sword[custom_data={HasAlready:1}] run item replace entity @s weapon.mainhand with bow[custom_data={HasAlready:1},enchantments={}]