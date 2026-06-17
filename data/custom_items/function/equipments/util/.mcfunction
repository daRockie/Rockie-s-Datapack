data remove entity @n[tag=RD.data_holder] data.temp

# tellraw @s [{"text":"inventory changed"}]

# playsound ui.button.click master @s ~ ~ ~ 1 1

data modify entity @n[tag=RD.data_holder,type=marker] data.temp.head set from entity @s equipment.head.components."minecraft:custom_data".score

data modify entity @n[tag=RD.data_holder,type=marker] data.temp.chest set from entity @s equipment.chest.components."minecraft:custom_data".score

data modify entity @n[tag=RD.data_holder,type=marker] data.temp.legs set from entity @s equipment.legs.components."minecraft:custom_data".score

data modify entity @n[tag=RD.data_holder,type=marker] data.temp.feet set from entity @s equipment.feet.components."minecraft:custom_data".score

