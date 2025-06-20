#say calculating items!
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 0.5 2

# スロット 0
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[0] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[0] 1
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:3b}].count int 1 run scoreboard players get @s RD.block.calculator
execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.3 with air

# スロット 1
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[1] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[1] 1
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:4b}].count int 1 run scoreboard players get @s RD.block.calculator
execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.4 with air

# スロット 2
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[2] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[2] 1
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:5b}].count int 1 run scoreboard players get @s RD.block.calculator
execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.5 with air

# スロット 3
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[3] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[3] 1
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:12b}].count int 1 run scoreboard players get @s RD.block.calculator
execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.12 with air

# スロット 4
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[4] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[4] 1
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:13b}].count int 1 run scoreboard players get @s RD.block.calculator
execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.13 with air

# スロット 5
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[5] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[5] 1
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:14b}].count int 1 run scoreboard players get @s RD.block.calculator
execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.14 with air

# スロット 6
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[6] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[6] 1
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:21b}].count int 1 run scoreboard players get @s RD.block.calculator
execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.21 with air

# スロット 7
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[7] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[7] 1
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:22b}].count int 1 run scoreboard players get @s RD.block.calculator
execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.22 with air

# スロット 8
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[8] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[8] 1
execute if score @s RD.block.calculator.temp1 matches 1.. run scoreboard players operation @s RD.block.calculator -= @s RD.block.calculator.temp1
execute if score @s RD.block.calculator.temp1 matches 1.. run execute store result block ~ ~ ~ Items[{Slot:23b}].count int 1 run scoreboard players get @s RD.block.calculator
execute if score @s RD.block.calculator matches ..0 run item replace block ~ ~ ~ container.23 with air

tag @s remove RD.block.customCrafter.processing