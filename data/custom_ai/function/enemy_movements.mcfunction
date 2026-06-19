# 虫けらども
execute if entity @s[type=#arthropod] run function custom_ai:advanced_ai/spider/tick

# ゾンビ
execute if entity @s[type=#zombies] run function custom_ai:advanced_ai/zombie/tick

# 骨類
execute if entity @s[type=#skeletons] run function custom_ai:advanced_ai/skeleton/tick

# クリパ
execute if entity @s[type=creeper] run function custom_ai:advanced_ai/creeper/tick

# 円だマン
execute if entity @s[type=enderman] run function custom_ai:advanced_ai/enderman/tick

# ウィッチ
execute if entity @s[type=witch] run function custom_ai:advanced_ai/witch/tick
