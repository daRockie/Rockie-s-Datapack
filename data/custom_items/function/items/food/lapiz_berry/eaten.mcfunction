scoreboard players set #5 mana 5

scoreboard players operation @s mana += #5 mana
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 2
particle minecraft:firework ~ ~1 ~ 0.5 0.5 0.5 0.05 15
particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0.05 15
advancement revoke @s only custom_items:item_used/food/lapiz_berry/eaten