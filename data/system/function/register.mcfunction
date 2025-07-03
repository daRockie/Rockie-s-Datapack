$data modify storage rockietools:uuid datas append value "$(UUID)"
$data modify storage rockietools:uuid datas."$(UUID)".parent set from entity @n[type=!#unliving_objects,distance=0.01..] {}