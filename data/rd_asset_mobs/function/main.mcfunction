execute as @e[type=!#minecraft:unliving_objects,tag=!RD.initialized,tag=!RD.no_auto_initialize] at @s if entity @a[distance=..80] as @s run function rd_asset_mobs:system/proceed

execute as daRockie store result score 80マス以内でinitさてれてないエンティティの数 RD.ai_timer if entity @e[type=!#minecraft:unliving_objects,tag=!RD.initialized,tag=!RD.no_auto_initialize,distance=..80]
execute as daRockie store result score 80マス以上の距離でinitさてれてないエンティティの数 RD.ai_timer if entity @e[type=!#minecraft:unliving_objects,tag=!RD.initialized,tag=!RD.no_auto_initialize,distance=80..]