# summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Small:1b,Tags:["RD.cmd","RD.object"],equipment:{head:{id:"minecraft:command_block",components:{"minecraft:custom_data":{\
data:[\
{key:"tellraw @a [{text:'no code below!',color:'gray'}]"},\
{key:"kill @s"},\
{key:"execute at @s unless block ~ -64 ~ barrier run setblock ~ -64 ~ barrier replace"},\
{key:"execute at @s unless block ~ -64 ~ barrier run summon marker ~ ~ ~ {Tags:['RD.marker.ore_generation','RD.object','RD.no_auto_initialize']}"},\
{key:"execute at @s unless block ~ -64 ~ barrier run tellraw @a [{text:'No Barrier found',color:'green'}]"},\
{key:"execute at @s if block ~ -64 ~ barrier run kill @s"},\
{key:"execute at @s if block ~ -64 ~ barrier run tellraw @a [{text:'Barrier found',color:'red'}]"},\
{key:"execute at @s as @s at @s positioned ~29999992 ~ ~29999992 positioned ~108086391056891904 ~ ~108086391056891904 positioned ~-108086391056891904 ~ ~-108086391056891904 positioned ~-30000000 ~ ~-30000000 run tp @s ~ 80 ~"},\
{key:"tellraw @a [{text:'Scanning Chunk...',color:'gray',italic:1b}]"},\
{key:"data modify entity @s NoGravity set value 1b"}\
]}}}}}

summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Small:1b,Tags:["RD.cmd","RD.object"],equipment:{head:{id:"minecraft:command_block",components:{"minecraft:custom_data":{\
data:[\
{key:"kill @s"},\
{key:"execute at @s unless block ~ -64 ~ barrier run setblock ~ -64 ~ barrier replace"},\
{key:"execute at @s unless block ~ -64 ~ barrier run summon marker ~ ~ ~ {Tags:['RD.marker.ore_generation','RD.object','RD.no_auto_initialize']}"},\
{key:"execute at @s if block ~ -64 ~ barrier run kill @s"},\
{key:"execute at @s as @s at @s positioned ~29999992 ~ ~29999992 positioned ~108086391056891904 ~ ~108086391056891904 positioned ~-108086391056891904 ~ ~-108086391056891904 positioned ~-30000000 ~ ~-30000000 run tp @s ~ 80 ~"},\
{key:"data modify entity @s NoGravity set value 1b"}\
]}}}}}