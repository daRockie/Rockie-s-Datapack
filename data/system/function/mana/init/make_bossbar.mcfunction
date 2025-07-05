$say $(id)
$bossbar add mana_$(id) "a"
$bossbar set mana_$(id) color blue
$execute store result bossbar mana_$(id) max run scoreboard players get @s mana.max
$bossbar set mana_$(id) style notched_10
$bossbar set mana_$(id) name ["",{"text":"Mana: (","color":"aqua"},{"color":"aqua","score":{"objective":"mana","name":"@s"}},{"color":"aqua","text":" / "},{"color":"aqua","score":{"objective":"mana.max","name":"@s"}},{"color":"aqua","text":")"}]
$bossbar set mana_$(id) players @s