# Preventing from run command
execute if entity @s[type=!custom_ai:hostile] run return fail
execute if entity @s[type=creeper] run return fail

execute if entity @s[tag=HasVehicle] run ride @s dismount
ride @s mount @n[tag=RD.idChecker]
data modify storage rockietools:get_id id set value {}
execute on vehicle run data modify storage rockietools:get_id id set string entity @s Passengers[0].id 10
#tellraw @a {"translate":"%s => %s","with":[{"selector":"@s"},{"storage":"rockietools:get_id","nbt":"id"}]}
execute on vehicle run kill @s
ride @s mount @n[distance=0.01..0.5,type=!#custom_ai:hostile]
#$data remove storage rockietools:get_id $(UUID)