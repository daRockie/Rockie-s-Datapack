# say executed
# tellraw @a [{"text":"Current: ",extra:[{"score":{name:"@s",objective:"RD.temp0"}}]}]
$execute $(declear) items block ~ ~ ~ container.$(slot) $(modifier) run return run function custom_items:custom_block/advanced_crafter/utils/storage/recipes/refer/compare/success
tellraw @a [{"text":"✖",bold:true,color:red}]