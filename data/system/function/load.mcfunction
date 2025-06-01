scoreboard objectives add mana dummy "マナ"
scoreboard objectives add mana.max dummy "最大マナ"
scoreboard objectives add mana.regen dummy "マナ回復速度"
scoreboard objectives add mana.timer dummy "マナ回復タイマー"
scoreboard objectives add mana.operation dummy "マナ計算"

scoreboard objectives add ability.right_click dummy "アビリティ：右クリ検知"

scoreboard objectives add abilityCooldown.healing_wand dummy "ヒーリングワンドのクールダウン"
scoreboard objectives add abilityCooldown.fiery_wand dummy "ファイアリーワンドのクールダウン"
scoreboard objectives add abilityCooldown.wand_of_ardor dummy "慈愛の杖のクールダウン"

data merge storage rockietools:uuid {datas:""}
data modify storage rockietools:uuid datas set value {}