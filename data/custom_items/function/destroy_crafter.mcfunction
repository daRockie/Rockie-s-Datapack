playsound entity.item.break block @a ~ ~ ~ 2 1
playsound entity.generic.explode block @a ~ ~ ~ 1 0.5
particle explosion ~ ~ ~
particle lava ~ ~ ~ 0.05 0.05 0.05 0.025 10
setblock ~ ~ ~ air destroy
kill @e[type=item,distance=0..2,nbt={Item:{components:{"minecraft:custom_name":{text:"改良型作業台",bold:1b}},id:"minecraft:dispenser"}}]
summon item ~ ~1 ~ {Item:{id:"minecraft:armor_stand",count:1,components:{"minecraft:entity_data":{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["craft_pos"],CustomName:{"color":"aqua","text":"改良型作業台","italic":"false"}},"minecraft:custom_name":{text:"改良型作業台",italic:0b},"minecraft:lore":[{text:"右クリックで設置、近くに立ってスニーク長押しで破壊します！",italic:0b},{text:"クラフト素材を入れるとクラフト結果が出ます！その状態でスニークするとアイテムを入手できます。",italic:0b},{text:"注意：クラフト素材は一個分の素材を入れてください！",bold:1b,italic:0b}],"minecraft:tooltip_display":{hide_tooltip:false},"minecraft:rarity":"rare"}}}
kill @s