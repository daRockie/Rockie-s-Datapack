playsound block.iron_door.close player @a ~ ~ ~ 1 0.5
playsound block.fire.extinguish player @a ~ ~ ~ 1 0.5

particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.05 15

tellraw @s [{"text":"息吹の香炉: ",color:gray,italic:0b},{"italic":false,"text":"マナが不足しています！","color":"red"}]