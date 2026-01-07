item replace block ~ ~ ~ container.0 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.7 with air

item replace block ~ ~ ~ container.8 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

item replace block ~ ~ ~ container.9 with crafting_table[enchantment_glint_override=1b,custom_name={"text":"クラフト画面を開く","italic":0b,color:yellow},lore=[{"text":"警告：レシピ画面で表示されているアイテムと所持しているアイテムを置き換えると消滅します！",italic:0b,color:red,bold:1b}],custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.10 with air
item replace block ~ ~ ~ container.11 with air
item replace block ~ ~ ~ container.15 with air
item replace block ~ ~ ~ container.16 with air
item replace block ~ ~ ~ container.17 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

item replace block ~ ~ ~ container.18 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.19 with air
item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.24 with air
item replace block ~ ~ ~ container.25 with air
item replace block ~ ~ ~ container.26 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

function custom_items:custom_block/advanced_crafter/utils/storage/recipes/fill/init
function custom_items:custom_block/advanced_crafter/utils/storage/recipes/fill/give_tempitem with storage rockietools:custom_recipe temp_crafter.meta
scoreboard players add #_SLOTCOUNTER RD.block.calculator.temp3 0

#say Turned into recipe mode
scoreboard players set @s RD.isCrafting 0