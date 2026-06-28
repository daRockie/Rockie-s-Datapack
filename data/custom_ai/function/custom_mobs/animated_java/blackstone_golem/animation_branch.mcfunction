# particle bubble

# 動作中かつ歩行タグがついていないなら歩行モーション
execute unless predicate rd_system:mob_condition/is_moving if entity @s[tag=!RD.model.walk] run function custom_ai:custom_mobs/animated_java/blackstone_golem/anim/walk/anim

# 動作中でないかつidleタグがないなら待機モーション
execute if predicate rd_system:mob_condition/is_moving if entity @s[tag=!RD.model.idle] run function custom_ai:custom_mobs/animated_java/blackstone_golem/anim/idle/anim