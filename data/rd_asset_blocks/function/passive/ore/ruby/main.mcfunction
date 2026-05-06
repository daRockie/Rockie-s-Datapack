# say hi
particle dust{color:[1.0,0.22,0.22],scale:1} ~ ~ ~ 0.4 0.4 0.4 0.00005 1 normal @a

# 明るさの代入
execute store result entity @s brightness.block int 1 run function rd_asset_blocks:get_brightness
execute store result entity @s brightness.sky int 1 run function rd_asset_blocks:get_brightness

# レッドストーン鉱石が自分の位置にないかつレッドストーンがドロップしている場合、自身をキル
execute if entity @s[tag=!RD.type.block.deepslate] if entity @n[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..1] unless block ~ ~ ~ redstone_ore run function rd_asset_blocks:passive/ore/kms
execute if entity @s[tag=!RD.type.block.deepslate] unless entity @n[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..1] unless block ~ ~ ~ redstone_ore run kill @s