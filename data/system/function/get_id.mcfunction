ride @s mount @n[tag=RD.idChecker]
data modify storage rockietools:get_id id set value {}
execute on vehicle run data modify storage rockietools:get_id id set string entity @s Passengers[0].id 10
#tellraw @a {"translate":"%s => %s","with":[{"selector":"@s"},{"storage":"rockietools:get_id","nbt":"id"}]}
execute on vehicle run kill @s
#$data remove storage rockietools:get_id $(UUID)