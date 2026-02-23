$execute if items block ~ ~ ~ container.$(slot) * run scoreboard players set @s RD.block.calculator.temp1 $(count)
$execute if items block ~ ~ ~ container.$(slot) * store result score @s RD.block.calculator run data get block ~ ~ ~ Items[{Slot:$(count)b}].count

# $tellraw @a ["SLOT $(slot):",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]

$execute if items block ~ ~ ~ container.$(slot) * if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return run tellraw @a [{"text":"✖",bold:true,color:red,extra:[{"text":"アイテムが不足しています",color:white,bold:false}]}]

scoreboard players add @s RD.custom_block.CALC_0 1
tellraw @a [{"text":"✔",bold:true,color:green}]
# tellraw @a [{"text":"RECIPE SUCESS: ",extra:[{"score":{name:"@s",objective:"RD.custom_block.CALC_0"}}]}]
execute if score @s RD.custom_block.CALC_0 matches 9.. run return run scoreboard players set @s RD._BOOLEAN 1
