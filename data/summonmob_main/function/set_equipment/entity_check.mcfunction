tag @s add RD.noEquipment
#execute if items entity @s armor.* * run return run tellraw @a "I've equipped any armor!"
#say CHOOSING..

execute on vehicle unless entity @s[type=area_effect_cloud] positioned ~ ~1 ~ run tag @s[distance=..0.5] add HasVehicle

execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["RD.idChecker"],Duration:1,Radius:0}
execute at @s run function system:get_id
function summonmob_main:set_equipment/equip with storage rockietools:get_id