execute on target run tag @s add skeleton.target

execute if entity @s[tag=RD.enemy.wizard.1] run function custom_ai:custom_mobs/wizard/apprentice
execute if entity @s[tag=elite_skeleton] run function custom_ai:custom_mobs/elite_skeleton

tag @n[tag=skeleton.target] remove skeleton.target