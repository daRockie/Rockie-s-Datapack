execute if entity @a[distance=..100] positioned ~ 256 ~ run tag @a[dx=14.6,dy=-400,dz=14.6] add RD.scanned_chunk

execute if entity @a[distance=..100,tag=!RD.scanned_chunk] as @p[tag=!RD.scanned_chunk,dx=14.6,dy=-400,dz=14.6] at @s run function rd_asset_blocks:test_

tag @a[tag=RD.scanned_chunk] remove RD.scanned_chunk