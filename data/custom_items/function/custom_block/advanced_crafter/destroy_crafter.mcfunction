#playsound entity.item.break block @a ~ ~ ~ 2 1
playsound entity.chicken.egg block @a ~ ~ ~ 1 1
#particle explosion ~ ~ ~
particle cloud ~ ~ ~ 0.05 0.05 0.05 0.025 5
setblock ~ ~ ~ air destroy
kill @e[type=item,distance=0..2,nbt={Item:{components:{"minecraft:custom_name":{text:"改良型作業台",bold:1b}},id:"minecraft:barrel"}}]
kill @e[type=block_display,sort=nearest,tag=RD.block.customCrafter,distance=..0.5]
summon item ~ ~1 ~ {Item:{id:"minecraft:armor_stand",count:1,components:{"minecraft:entity_data":{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["craft_pos"],CustomName:{"color":"yellow","text":"改良型作業台","italic":0b}},"item_model":"crafting_table",enchantment_glint_override:1b,"minecraft:custom_name":{text:"改良型作業台",color:"yellow",italic:0b},"minecraft:lore":[{"text":"普通の作業台では作れないモノを作れる、フシギな作業台。","italic":false,"color":"gray"},{"text":"設計図、説明書付き。","italic":false,"color": "gray"}],"minecraft:rarity":"rare","minecraft:max_stack_size":64}}}
function custom_items:custom_block/advanced_crafter/utils/remove_register with entity @s {}
kill @s