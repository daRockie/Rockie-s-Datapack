$data modify storage rockietools:uuid datas append value "$(UUID)"
$data modify storage rockietools:uuid datas."$(UUID)".parent set from entity @p {}