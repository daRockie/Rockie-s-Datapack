# データの定義
execute if data block ~ ~ ~ Items[{Slot:0b}].count store result score @s slot0 run data get block ~ ~ ~ Items[{Slot:0b}].count
execute unless data block ~ ~ ~ Items[{Slot:0b}].count run scoreboard players set @s slot0 0

execute if data block ~ ~ ~ Items[{Slot:1b}].count store result score @s slot1 run data get block ~ ~ ~ Items[{Slot:1b}].count
execute unless data block ~ ~ ~ Items[{Slot:1b}].count run scoreboard players set @s slot1 0

execute if data block ~ ~ ~ Items[{Slot:2b}].count store result score @s slot2 run data get block ~ ~ ~ Items[{Slot:2b}].count
execute unless data block ~ ~ ~ Items[{Slot:2b}].count run scoreboard players set @s slot2 0

execute if data block ~ ~ ~ Items[{Slot:3b}].count store result score @s slot3 run data get block ~ ~ ~ Items[{Slot:3b}].count
execute unless data block ~ ~ ~ Items[{Slot:3b}].count run scoreboard players set @s slot3 0

execute if data block ~ ~ ~ Items[{Slot:4b}].count store result score @s slot4 run data get block ~ ~ ~ Items[{Slot:4b}].count
execute unless data block ~ ~ ~ Items[{Slot:4b}].count run scoreboard players set @s slot4 0

execute if data block ~ ~ ~ Items[{Slot:5b}].count store result score @s slot5 run data get block ~ ~ ~ Items[{Slot:5b}].count
execute unless data block ~ ~ ~ Items[{Slot:5b}].count run scoreboard players set @s slot5 0

execute if data block ~ ~ ~ Items[{Slot:6b}].count store result score @s slot6 run data get block ~ ~ ~ Items[{Slot:6b}].count
execute unless data block ~ ~ ~ Items[{Slot:6b}].count run scoreboard players set @s slot6 0

execute if data block ~ ~ ~ Items[{Slot:7b}].count store result score @s slot7 run data get block ~ ~ ~ Items[{Slot:7b}].count
execute unless data block ~ ~ ~ Items[{Slot:7b}].count run scoreboard players set @s slot7 0

execute if data block ~ ~ ~ Items[{Slot:8b}].count store result score @s slot8 run data get block ~ ~ ~ Items[{Slot:8b}].count
execute unless data block ~ ~ ~ Items[{Slot:8b}].count run scoreboard players set @s slot8 0
