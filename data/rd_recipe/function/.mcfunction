# レシピロード
function rd_recipe:json/custom_crafter

execute store result storage rockietools:custom_recipe meta.crafter.length_recipe int 1 if data storage rockietools:custom_recipe list.crafter[]
execute store result storage rockietools:custom_recipe meta.crafter.length_slot int 1 if data storage rockietools:custom_recipe meta.crafter.allowed_slot[]