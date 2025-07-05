#say modifying
$execute store result bossbar mana_$(id) value run scoreboard players get @s mana
$bossbar set mana_$(id) name ["",{"text":"Mana: (","color":"aqua"},{"color":"aqua","score":{"objective":"mana","name":"@s"}},{"color":"aqua","text":" / "},{"color":"aqua","score":{"objective":"mana.max","name":"@s"}},{"color":"aqua","text":")"}]
$execute store result bossbar mana_$(id) max run scoreboard players get @s mana.max
$bossbar set mana_$(id) visible true
scoreboard players set @s mana.bossbar.fadeout 60