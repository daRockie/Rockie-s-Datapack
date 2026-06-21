playsound entity.zombie.hurt hostile @a ~ ~ ~ 3 2

effect give @s resistance 1 25

scoreboard players add @s RD.ai_timer 200

function custom_ai:movements/runaway/init