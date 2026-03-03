
#ターゲットの計算と追加
execute as @s[tag=!magic_attacked] store result score @a[gamemode=!creative,gamemode=!spectator,distance=..10,tag=!magic_attacked] magicTarget run data get entity @s UUID[0]
execute as @s[tag=!magic_attacked] store result score @e[type=minecraft:iron_golem,distance=..10,tag=!magic_attacked] magicTarget run data get entity @s UUID[0]
execute as @s[tag=!magic_attacked] store result score @e[type=minecraft:wolf,distance=..10,tag=!magic_attacked] magicTarget run data get entity @s UUID[0]
execute as @s[tag=!magic_attacked] store result score @e[type=minecraft:villager,distance=..10,tag=!magic_attacked] magicTarget run data get entity @s UUID[0]
execute as @s[tag=!magic_attacked] store result score @e[type=minecraft:wandering_trader,distance=..10,tag=!magic_attacked] magicTarget run data get entity @s UUID[0]
execute as @s[tag=!magic_attacked] store result score @a[gamemode=!adventure,gamemode=!survival,distance=..10,tag=!magic_attacked] magicTarget run data get entity @s UUID[0]

#自分を追加
execute store result score @s magicTarget run data get entity @s UUID[0]

#対象者が1体以上いる場合に大麻を買い、大麻が60個以上になったら攻撃開始
scoreboard players reset @s magicTargetAmount
execute as @s[tag=!magic_attacked] as @e if score @s magicTarget = @e[tag=magic,distance=..0.01,limit=1,sort=nearest] magicTarget run scoreboard players add @e[tag=magic,distance=..0.01,limit=1,sort=nearest] magicTargetAmount 1
execute as @s[tag=!magic_attacked] if score @s magicTargetAmount matches 2.. run scoreboard players add @s magicTimer 1
# execute as @s[tag=!magic_attacked] if score @s magicTargetAmount matches 2.. run say a
execute if score @s magicTargetAmount matches ..1 run scoreboard players reset @s magicTimer

#攻撃対象の選定
execute as @s[tag=!magic_attacked] if score @s magicTimer matches 60.. as @e if score @s magicTarget = @e[tag=magic,distance=..0.01,limit=1,sort=nearest] magicTarget run tag @s add magic_targets
execute as @s[tag=!magic_attacked] if score @s magicTimer matches 60.. as @e[tag=magic_targets, sort=random, limit=6] store result score @s magicAttacked run scoreboard players get @s magicTarget
execute as @s[tag=!magic_attacked] if score @s magicTimer matches 60.. as @e if score @s magicAttacked = @e[tag=magic,distance=..0.01,limit=1,sort=nearest] magicTarget run tag @s add magic_attacked

#対象者がいなくなったら密輸入から脱退する
execute if score @s magicTargetAmount matches ..1 run scoreboard players reset @s magicTimer

#フィルター解除
tag @e remove magic_targets

#攻撃中フラグを立てる
execute if score @s magicTimer matches 60.. run tag @s add magic_attacked

#攻撃
execute as @s[tag=magic_attacked] run scoreboard players add @s magicAttackTimer 1
execute as @s[tag=magic_attacked] run data modify entity @s NoAI set value 1b
execute as @s[tag=magic_attacked] run data modify entity @s Invulnerable set value 1b
execute as @s[tag=magic_attacked] run effect give @s resistance 5 255 true
execute as @s[tag=magic_attacked] at @s run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.05 0.05 0.05 0.05 10
execute as @s[tag=magic_attacked] as @e if score @s magicAttacked = @e[tag=magic,distance=..0.01,limit=1,sort=nearest] magicTarget run tag @s[tag=!magic] add magic_attackin

#浮遊効果を追加
execute if score @s magicAttackTimer matches 1 as @e[tag=magic_attackin] run effect give @s levitation 4 10 true
execute if score @s magicAttackTimer matches 100.. run tag @s remove magic_attacked
execute if score @s magicAttackTimer matches 100.. run data modify entity @s NoAI set value 0b
execute if score @s magicAttackTimer matches 100.. run data modify entity @s Invulnerable set value 0b
execute if score @s magicAttackTimer matches 100.. run effect clear @s resistance

#ノックバック用マグマキューブ召喚
execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}
# execute if score @s magicAttackTimer matches 85 as @e[tag=magic_attackin] at @s run summon tnt ^ ^-0.5 ^-1 {fuse:0}

execute if score @s magicAttackTimer matches 100.. as @e[tag=magic_attackin] run scoreboard players reset @s magicAttacked
execute if score @s magicAttackTimer matches 100.. as @e[tag=magic_attackin] run scoreboard players reset @s magicAttacked
execute if score @s magicAttackTimer matches 100.. as @e[tag=magic_attackin] run tag @s remove magic_attacked
execute as @s[tag=!magic_attacked] run scoreboard players reset @s magicAttackTimer

#フィルター解除
tag @e remove magic_attackin