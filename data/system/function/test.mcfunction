# storage test
$execute as @a if entity @s[nbt={UUID:$(UUID)}] run tellraw @a [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" hi"}]