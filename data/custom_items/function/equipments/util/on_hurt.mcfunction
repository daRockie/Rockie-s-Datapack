advancement revoke @s only custom_items:occasional/hurt

execute store result score @s RD.max_health run attribute @s max_health get 10

scoreboard players set #const.10000 RD.ai_timer 10000

# tellraw @a [{"score":{name:"@s","objective":"RD.max_health"}}]

execute if score @s RD.damage_taken matches 0.. store result score @s RD.damage_taken run scoreboard players get @s RD.damage_taken

scoreboard players operation @s RD.damage_taken *= #const.10000 RD.ai_timer

# tellraw @a [{"score":{name:"@s","objective":"RD.damage_taken"}}]

scoreboard players operation @s RD.damage_taken /= @s RD.max_health

# tellraw @a [{"text":"Damage: "},{"score":{name:"@s","objective":"RD.damage_taken"}}]

function custom_items:equipments/util/accesory_activate

scoreboard players set @s RD.damage_taken 0

