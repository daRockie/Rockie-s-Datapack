data modify entity @s DeathTime set value 19
data modify entity @s Silent set value 1b
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:portal},Radius:0,Duration:4,Tags:["kill_item"]}
execute at @s run summon enderman ~ ~ ~ {DeathLootTable:"custom_ai:messenger_0",CustomName:[{text:"最果ての地からのシ者"}],Health:40,Tags:["spawned","proceed","elite_eman"],equipment:{mainhand:{id:ender_pearl,count:2},feet:{id:leather_boots,components:{trim:{pattern:host,material:amethyst},dyed_color:0,custom_name:[{text:"エンダーブーツ",italic:false,color:blue}],lore:[[{text:"やだ！アタイ水きらい！"}]],enchantments:{frost_walker:3,soul_speed:2},equippable:{slot:feet}}}},drop_chances:{mainhand:0.03f,feet:0.01f},attributes:[{id:attack_knockback,base:0.3f},{id:max_health,base:40f}]}
kill @s