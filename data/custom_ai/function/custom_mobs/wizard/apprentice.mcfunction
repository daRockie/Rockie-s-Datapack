#ウィッチメイン処理
execute if entity @e[tag=skeleton.target,distance=0..6] run scoreboard players add @s RD.ai_timer 1

# AI分岐
execute if score @s RD.ai_timer matches 30.. run function custom_ai:custom_mobs/wizard/spell_attempt {"requirement":20,"func":"custom_ai:advanced_ai/witch/warp"}