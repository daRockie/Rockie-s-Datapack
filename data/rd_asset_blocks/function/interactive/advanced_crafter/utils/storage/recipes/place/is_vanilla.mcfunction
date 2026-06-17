item replace entity @s weapon.offhand with air

# say at least ill say hi

$execute unless items entity @s weapon.offhand * run item replace block ~ ~ ~ container.$(slot) with $(modifier)

$execute unless items entity @s weapon.offhand * run return run item modify block ~ ~ ~ container.$(slot) rd_asset_blocks:set_tempitem

$function rd_recipe:return_item {table:"$(table)", place:"container.$(slot)", args:"block ~ ~ ~"}

$item modify block ~ ~ ~ container.$(slot) rd_asset_blocks:set_tempitem