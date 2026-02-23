item replace block ~ ~ ~ container.0 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.1 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.2 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.6 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.7 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.8 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

item replace block ~ ~ ~ container.9 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.10 with knowledge_book[enchantment_glint_override=1b,custom_name={"text":"レシピを確認する","italic":0b},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.11 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.15 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.16 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.17 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

item replace block ~ ~ ~ container.18 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.19 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.20 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.24 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.25 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]
item replace block ~ ~ ~ container.26 with black_stained_glass_pane[tooltip_display={hide_tooltip:true},custom_data={TempItem:1b}]

item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.4 with air
item replace block ~ ~ ~ container.5 with air
item replace block ~ ~ ~ container.12 with air
item replace block ~ ~ ~ container.13 with air
item replace block ~ ~ ~ container.14 with air
item replace block ~ ~ ~ container.21 with air
item replace block ~ ~ ~ container.22 with air
item replace block ~ ~ ~ container.23 with air

#say Turned into craft mode

function custom_items:custom_block/advanced_crafter/utils/storage/recipes/refer/init

scoreboard players set @s RD.isCrafting 1
