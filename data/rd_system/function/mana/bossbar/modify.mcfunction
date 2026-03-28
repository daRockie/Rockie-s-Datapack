#say modifying
$execute store result bossbar mana_$(id) value run scoreboard players get @s RD.mana
$execute if entity @s[team=devs] run bossbar set mana_$(id) name ["",{"text":"Mana: ( ∞ / ∞ )","color":"aqua"}]
$execute unless entity @s[team=devs] run bossbar set mana_$(id) name ["",{"text":"Mana: (","color":"aqua"},{"color":"aqua","score":{"objective":"RD.mana","name":"@s"}},{"color":"aqua","text":" / "},{"color":"aqua","score":{"objective":"RD.mana.max","name":"@s"}},{"color":"aqua","text":")"}]
$execute store result bossbar mana_$(id) max run scoreboard players get @s RD.mana.max
$bossbar set mana_$(id) visible true
scoreboard players set @s RD.mana.bossbar.fadeout 60