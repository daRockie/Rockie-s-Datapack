$data remove storage rockietools:uuid datas."$(UUID)"
playsound minecraft:entity.item.break master @a ~ ~ ~ 1 2
particle minecraft:item{item:"arrow"} ~ ~0.25 ~ 0.05 0.05 0.05 0.25 25
kill @s