playsound entity.ender_eye.death hostile @a ~ ~ ~ 1 0.5
playsound entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1

# item replace entity @s weapon.mainhand with ender_pearl[blocks_attacks={block_delay_seconds:5}] 1

effect give @s resistance 20 1

particle trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0 20


particle dust_color_transition{from_color:[0.75,0.0,1.0],to_color:[0.0,0.0,0.0],scale:1} ~ ~ ~ 1 1 1 0 10
