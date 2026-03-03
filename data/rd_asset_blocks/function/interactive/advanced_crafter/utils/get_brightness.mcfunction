# ゴリ押し処理

# 1y
execute positioned ~ ~1 ~ if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# 1x
execute positioned ~1 ~ ~ if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# 1z
execute positioned ~ ~ ~1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# -1x
execute positioned ~-1 ~ ~ if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# -1y
execute positioned ~ ~-1 ~ if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# -1z
execute positioned ~ ~ ~-1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# 1xz
execute positioned ~1 ~ ~1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# -1xz
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# Weird Pattern
execute positioned ~-1 ~ ~1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness
execute positioned ~1 ~ ~-1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# 1xz + y
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# -1xz + y
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# Weird Pattern + y
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# 1xz - y
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# -1xz - y
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness

# Weird Pattern - y
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ #custom_ai:no_collision run return run function system:get_brightness
