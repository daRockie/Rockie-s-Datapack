# スロット 0
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[0] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[0] 1
#tellraw @a ["SLOT 0:",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]

execute if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return 0

# スロット 1
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[1] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[1] 1
#tellraw @a ["SLOT 1:",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]

execute if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return 0

# スロット 2
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[2] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[2] 1
#tellraw @a ["SLOT 2:",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]

execute if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return 0

# スロット 3
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[3] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[3] 1
#tellraw @a ["SLOT 3:",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]

execute if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return 0

# スロット 4
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[4] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[4] 1
#tellraw @a ["SLOT 4:",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]

execute if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return 0

# スロット 5
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[5] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[5] 1
#tellraw @a ["SLOT 5:",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]

execute if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return 0

# スロット 6
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[6] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[6] 1
#tellraw @a ["SLOT 6:",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]
execute if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return 0

# スロット 7
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[7] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[7] 1
#tellraw @a ["SLOT 7:",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]
execute if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return 0

# スロット 8
$execute store result score @s RD.block.calculator.temp1 run data get storage rockietools:custom_crafter data."$(UUID)".cost[8] 1
$execute store result score @s RD.block.calculator run data get storage rockietools:custom_crafter data."$(UUID)".slots[8] 1
#tellraw @a ["SLOT 8:",{"score":{"name":"@s","objective":"RD.block.calculator.temp1"}},", ",{"score":{"name":"@s","objective":"RD.block.calculator"}}]
execute if score @s RD.block.calculator < @s RD.block.calculator.temp1 run return 0

#say clear

return 1