execute as @e[type=arrow,tag=!projectile] on origin if entity @s[type=player] as @e[type=arrow,tag=!projectile,nbt={inGround:0b}] run tag @s add projectile
execute as @e[type=spectral_arrow,tag=!projectile] on origin if entity @s[type=player] as @e[type=spectral_arrow,tag=!projectile,nbt={inGround:0b}] run tag @s add projectile
execute as @e[type=trident,tag=!projectile] on origin if entity @s[type=player] as @e[type=trident,tag=!projectile,nbt={inGround:0b}] run tag @s add projectile
execute as @e[type=snowball,tag=!projectile] on origin if entity @s[type=player] as @e[type=snowball,tag=!projectile] run tag @s add projectile
execute as @e[type=small_fireball,tag=!projectile] on origin if entity @s[type=player] as @e[type=small_fireball,tag=!projectile] run tag @s add projectile
execute as @e[type=wind_charge,tag=!projectile] on origin if entity @s[type=player] as @e[type=wind_charge,tag=!projectile] run tag @s add projectile
