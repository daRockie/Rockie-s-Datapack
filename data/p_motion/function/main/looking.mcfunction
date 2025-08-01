#> p_motion:main/looking
# 実行者の視線方向にMotionを付与する
#
# scoreboard players set $strength hb.Motion 0 (-1000000~1000000)

# 実行者タグ
tag @s add hb.executor

# 値の修正
execute if score $strength hb.Motion matches 1000001.. run scoreboard players set $strength hb.Motion 1000000
execute if score $strength hb.Motion matches ..-1000001 run scoreboard players set $strength hb.Motion -1000000
execute unless score $strength hb.Motion = $strength hb.Motion run scoreboard players set $strength hb.Motion 0

# 値を取得 ( x1:1, x2:1/100, x3:1/10000 )
data merge storage hb:motion {signs:{X:1,Y:1,Z:1},macro:{x1:0,x2:0,x3:0,y1:0,y2:0,y3:0,z1:0,z2:0,z3:0,signy:"+"},Pos:[0,0,0]}
execute positioned 0.0 0.0 0.0 summon marker run function p_motion:system/vector_set

execute if score $x_ hb.Motion matches ..-1 run data modify storage hb:motion signs.X set value -1
execute if data storage hb:motion signs{X:-1} run scoreboard players operation $x_ hb.Motion *= #-1 hb.Motion
execute store result storage hb:motion macro.x1 int 0.0001 run scoreboard players get $x_ hb.Motion
execute store result storage hb:motion macro.x2 int 0.01 run scoreboard players operation $x_ hb.Motion %= #10000 hb.Motion
execute store result storage hb:motion macro.x3 int 1 run scoreboard players operation $x_ hb.Motion %= #100 hb.Motion
execute if data storage hb:motion macro{x1:0} run data modify storage hb:motion macro.x1 set value 100
execute if data storage hb:motion macro{x2:0} run data modify storage hb:motion macro.x2 set value 100
execute if data storage hb:motion macro{x3:0} run data modify storage hb:motion macro.x3 set value 100

execute if score $y_ hb.Motion matches ..-1 run data modify storage hb:motion signs.Y set value -1
execute if data storage hb:motion signs{Y:-1} run scoreboard players operation $y_ hb.Motion *= #-1 hb.Motion
execute store result storage hb:motion macro.y1 int 0.0001 run scoreboard players get $y_ hb.Motion
execute store result storage hb:motion macro.y2 int 0.01 run scoreboard players operation $y_ hb.Motion %= #10000 hb.Motion
execute store result storage hb:motion macro.y3 int 1 run scoreboard players operation $y_ hb.Motion %= #100 hb.Motion
execute if data storage hb:motion macro{y1:0} run data modify storage hb:motion macro.y1 set value 100
execute if data storage hb:motion macro{y2:0} run data modify storage hb:motion macro.y2 set value 100
execute if data storage hb:motion macro{y3:0} run data modify storage hb:motion macro.y3 set value 100
execute if data storage hb:motion signs{Y:-1} run data modify storage hb:motion macro.signy set value "-"

execute if score $z_ hb.Motion matches ..-1 run data modify storage hb:motion signs.Z set value -1
execute if data storage hb:motion signs{Z:-1} run scoreboard players operation $z_ hb.Motion *= #-1 hb.Motion
execute store result storage hb:motion macro.z1 int 0.0001 run scoreboard players get $z_ hb.Motion
execute store result storage hb:motion macro.z2 int 0.01 run scoreboard players operation $z_ hb.Motion %= #10000 hb.Motion
execute store result storage hb:motion macro.z3 int 1 run scoreboard players operation $z_ hb.Motion %= #100 hb.Motion
execute if data storage hb:motion macro{z1:0} run data modify storage hb:motion macro.z1 set value 100
execute if data storage hb:motion macro{z2:0} run data modify storage hb:motion macro.z2 set value 100
execute if data storage hb:motion macro{z3:0} run data modify storage hb:motion macro.z3 set value 100

# 不要スコア消去
scoreboard players reset $x_ hb.Motion
scoreboard players reset $y_ hb.Motion
scoreboard players reset $z_ hb.Motion

# Motion付与エンティティ召喚
execute if entity @s[type=player] positioned as @s run function p_motion:system/summon with storage hb:motion macro