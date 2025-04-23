
# 計算用数値の定義
scoreboard players set #minusOne sum0 1

# 0
execute store result score @s item_count run scoreboard players operation @s slot0 -= #minusOne sum0

# tellraw @a ["0: ",{"score":{"objective":"item_count","name":"@s"}}]

execute if score @s item_count matches ..0 run item replace block ~ ~ ~ container.0 with air
execute store result block ~ ~ ~ Items[{Slot:0b}].count int 1 run scoreboard players get @s item_count

# 1
execute store result score @s item_count run scoreboard players operation @s slot1 -= #minusOne sum0

# tellraw @a ["1: ",{"score":{"objective":"item_count","name":"@s"}}]

execute if score @s item_count matches ..0 run item replace block ~ ~ ~ container.1 with air
execute store result block ~ ~ ~ Items[{Slot:1b}].count int 1 run scoreboard players get @s item_count

# 2
execute store result score @s item_count run scoreboard players operation @s slot2 -= #minusOne sum0

# tellraw @a ["2: ",{"score":{"objective":"item_count","name":"@s"}}]

execute if score @s item_count matches ..0 run item replace block ~ ~ ~ container.2 with air
execute store result block ~ ~ ~ Items[{Slot:2b}].count int 1 run scoreboard players get @s item_count

# 3
execute store result score @s item_count run scoreboard players operation @s slot3 -= #minusOne sum0

# tellraw @a ["3: ",{"score":{"objective":"item_count","name":"@s"}}]

execute if score @s item_count matches ..0 run item replace block ~ ~ ~ container.3 with air
execute store result block ~ ~ ~ Items[{Slot:3b}].count int 1 run scoreboard players get @s item_count

# 4
execute store result score @s item_count run scoreboard players operation @s slot4 -= #minusOne sum0

# tellraw @a ["4: ",{"score":{"objective":"item_count","name":"@s"}}]

execute if score @s item_count matches ..0 run item replace block ~ ~ ~ container.4 with air
execute store result block ~ ~ ~ Items[{Slot:4b}].count int 1 run scoreboard players get @s item_count

# 5
execute store result score @s item_count run scoreboard players operation @s slot5 -= #minusOne sum0

# tellraw @a ["5: ",{"score":{"objective":"item_count","name":"@s"}}]

execute if score @s item_count matches ..0 run item replace block ~ ~ ~ container.5 with air
execute store result block ~ ~ ~ Items[{Slot:5b}].count int 1 run scoreboard players get @s item_count

# 6
execute store result score @s item_count run scoreboard players operation @s slot6 -= #minusOne sum0

# tellraw @a ["6: ",{"score":{"objective":"item_count","name":"@s"}}]

execute if score @s item_count matches ..0 run item replace block ~ ~ ~ container.6 with air
execute store result block ~ ~ ~ Items[{Slot:6b}].count int 1 run scoreboard players get @s item_count

# 7
execute store result score @s item_count run scoreboard players operation @s slot7 -= #minusOne sum0

# tellraw @a ["7: ",{"score":{"objective":"item_count","name":"@s"}}]

execute if score @s item_count matches ..0 run item replace block ~ ~ ~ container.7 with air
execute store result block ~ ~ ~ Items[{Slot:7b}].count int 1 run scoreboard players get @s item_count

# 8
execute store result score @s item_count run scoreboard players operation @s slot8 -= #minusOne sum0

# tellraw @a ["8: ",{"score":{"objective":"item_count","name":"@s"}}]

execute if score @s item_count matches ..0 run item replace block ~ ~ ~ container.8 with air
execute store result block ~ ~ ~ Items[{Slot:8b}].count int 1 run scoreboard players get @s item_count