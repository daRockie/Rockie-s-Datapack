$execute if items block ~ ~ ~ container.$(slot) * run scoreboard players set @s RD.block.calculator.temp1 $(count)
$execute if items block ~ ~ ~ container.$(slot) * store result score @s RD.block.calculator run data get block ~ ~ ~ Items[{Slot:$(slot)b}].count

# $tellraw @a ["SLOT $(slot):",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]

$execute if items block ~ ~ ~ container.$(slot) * if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return run tellraw @a [{"text":"✖",bold:true,color:red,extra:[{"text":"アイテムが不足しています",color:white,bold:false}]}]

# tellraw @a [{"text":"⌚",bold:true,color:gold,extra:[{"text":"計算を開始します",color:white,bold:false}]}]
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
$execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:$(slot)b}].count int 1 run scoreboard players get @s RD.block.calculator
$execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.$(slot) with air

# tellraw @a [{"text":"✔",bold:true,color:green,extra:[{"text":"正常に計算を終了しました",color:white,bold:false}]}]
scoreboard players set @s RD._BOOLEAN 0