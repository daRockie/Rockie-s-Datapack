# ターゲット
execute on target run tag @s add spider.target

execute if entity @s[tag=RD.bloodmother] run function custom_ai:custom_mobs/bloodmother
execute if entity @s[tag=mini_spider] run function custom_ai:custom_mobs/mini_spider

# タゲ外し
tag @n[tag=spider.target] remove spider.target