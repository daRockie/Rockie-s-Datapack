# say executed
# tellraw @a [{"text":"スロット: ",extra:[{"score":{name:"@s",objective:"RD.temp0"}}]}]
$execute $(declear) items block ~ ~ ~ container.$(slot) $(modifier) run return run function rd_asset_blocks:interactive/advanced_crafter/utils/storage/recipes/refer/compare/success {"count":$(count),"slot":"$(slot)"}
# tellraw @a [{"text":"✖",bold:true,color:red,extra:[{"text":"アイテムが違います",bold:false,color:white}]}]