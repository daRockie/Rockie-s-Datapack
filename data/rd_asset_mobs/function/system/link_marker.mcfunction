$execute unless data entity @n[tag=RD.data_holder] data.players.[{_:"$(UUID)"}] run return run data modify entity @n[tag=RD.data_holder] data.players append value {_:"$(UUID)",properties:[{"active_effects":{}}]}

# execute unless data entity @n[tag=RD.data_holder] data.players.[{_:"$(UUID)"}] run return run 