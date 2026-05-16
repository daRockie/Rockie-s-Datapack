# 置換可能なブロックではない場合処理を終了
# execute unless block ~ ~ ~ #can_ores_generate run return run kill @s 

# ブロック（視覚効果）
$summon minecraft:item_display $(pos) {transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0.502,0],scale:[2.005,2.015,2.005]},item:{id:"minecraft:player_head",components:{profile:{properties:[{value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTE2MzQ4NmZkNTMyYjIyYzQzYjVjMmVkYjg1ZTc4N2JiODU4NjAxZmMzN2EyZWQwZDYyODc3ZjRjNTM2ZWJjZiJ9fX0=",name:"textures"}]},"minecraft:custom_data":{data:[{key:"kill @s"},{key:"loot spawn ~ ~ ~ loot rd_asset_blocks:block/peridot_ore"},{key:"kill @n[type=item,nbt={Item:{id:'minecraft:emerald'}},distance=0..1,tag=!RD.initialized]"}]}}},brightness:{block:15,sky:1},width:1,height:1,Tags:["RD.type.block","RD.block.passive","RD.ore_peridot"]}

# オフセット
execute as @n[type=item_display,tag=RD.ore_peridot] at @s run tp @s ~ ~ ~

# ブロック
$setblock $(pos) emerald_ore