execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5
loot give @s loot custom_items:misc/warp_potion
tellraw @s [{"text":"3回死亡したため、透明化と転移のポーションが付与されました！","color":"green","bold":true},{"text":"ポーションを飲んで仲間の元へ行きましょう！","color":"green"}]
effect give @s invisibility 10 1
scoreboard players reset @s deathCount