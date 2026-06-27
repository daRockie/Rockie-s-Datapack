playsound entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1
playsound entity.enderman.scream hostile @a ~ ~ ~ 0.5 0.5
particle dust_color_transition{from_color:[0.75,0.0,1.0],to_color:[0.0,0.0,0.0],scale:1} ~ ~ ~ 0.5 1 0.5 0.5 25
particle trial_spawner_detection ~ ~ ~ 0.5 1 0.5 0 50


tag @s add RD.void_bellwether.attack_prepared
scoreboard players reset @s RD.ai_timer

tag @s add RD.void_bellwether.attack_beam

# tag @s[predicate=custom_ai:percent/33.3] add RD.void_bellwether.attack_beam
# tag @s[predicate=custom_ai:percent/33.3,tag=!RD.void_bellwether.attack_beam] add RD.void_bellwether.attack_explosion
# tag @s[tag=RD.void_bellwether.attack_beam,tag=RD.void_bellwether.attack_explosion] add RD.bellwether.attack_homing_bullet