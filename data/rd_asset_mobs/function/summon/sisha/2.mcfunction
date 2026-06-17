data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
data modify entity @s DeathLootTable set value "empty"

execute at @s run summon enderman ~ ~ ~ {NoAI:0b,DeathTime:18,DeathLootTable:"custom_ai:messenger/1",CustomName:[{text:"奈落の先導者"}],Health:40,Tags:["RD.spawned","RD.initialized","RD.messanger.1","RD.has_head_entity"],equipment:{feet:{id:leather_boots,components:{trim:{pattern:host,material:amethyst},dyed_color:0,custom_name:[{text:"エンダーブーツ",italic:false,color:blue}],lore:[[{text:"やだ！アタイ水きらい！"}]],enchantments:{frost_walker:3,soul_speed:2},equippable:{slot:feet}}}},drop_chances:{mainhand:0.03f,feet:0.01f},attributes:[{id:attack_knockback,base:0.3f},{id:max_health,base:40f}],\
Passengers:[\
{id:"armor_stand",Tags:["RD.object","RD.death_finder","DF.cmd","RD.enderman_head"],Invisible:1b,Small:1b,Invulnerable:1b,DisabledSlots:4144959,equipment:{head:{id:"command_block",components:{item_model:"air","custom_data":{data:[{"key":"kill @s"},{"key":"kill @n[type=item_display,tag=RD.enderman_head]"}]}}}}},{\
id:"item_display",transformation:{left_rotation:[0,200,0,1],right_rotation:[0,0,0,1],translation:[0,0.25,0],scale:[1.4,1.4,1.4]},\
teleport_duration:2,\
Tags:["RD.object","RD.head","RD.enderman_head"],\
item:{id:"minecraft:player_head",count:1,\
components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDU4OWNlNjRhYTFlMjdkZGE3YTQ2ZmFhNDJjZDg5Y2FjNjlmNzU2NDc1ZTNmODQzNmFmNDc1ZTZjZDcwYTFjIn19fQ=="}\
]}}}},\
]}

tp @s ~ ~-200 ~
kill @s
