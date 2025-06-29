$tellraw @s {"text": "$(slot)"}
$execute if items entity @s inventory.$(slot) tnt run return run say inventory.$(slot)
say there is no tnt!