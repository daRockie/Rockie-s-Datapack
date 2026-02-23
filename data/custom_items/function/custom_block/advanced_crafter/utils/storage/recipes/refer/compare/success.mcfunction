scoreboard players add @s RD.custom_block.CALC_0 1
tellraw @a [{"text":"✔",bold:true,color:green}]
# tellraw @a [{"text":"RECIPE SUCESS: ",extra:[{"score":{name:"@s",objective:"RD.custom_block.CALC_0"}}]}]
execute if score @s RD.custom_block.CALC_0 matches 9.. run return run scoreboard players set @s RD._BOOLEAN 1
