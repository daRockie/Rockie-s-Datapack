scoreboard objectives add mana dummy "マナ"
scoreboard objectives add mana.max dummy "最大マナ"
scoreboard objectives add mana.regen dummy "マナ回復速度"
scoreboard objectives add mana.timer dummy "マナ回復タイマー"
scoreboard objectives add mana.operation dummy "マナ計算"
scoreboard objectives add mana.bossbar.fadeout dummy "マナ表示フェードアウト"

scoreboard objectives add RD.player.ID dummy "プレイヤーID表"

scoreboard objectives add ability.right_click dummy "アビリティ：右クリ検知"

scoreboard objectives add item.shortBow.cooldown dummy "ショートボウのクールダウン"

scoreboard objectives add abilityCooldown.reverberation dummy "「残響」の魔導書のクールダウン"

data merge storage rockietools:uuid {datas:""}
data modify storage rockietools:uuid datas set value {}

execute if data storage rockietools:player {} run data modify storage rockietools:player data set value {}

execute if data storage rockietools:custom_crafter {} run data modify storage rockietools:custom_crafter data set value {}
function system:save_progression