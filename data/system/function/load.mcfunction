scoreboard objectives add RD.mana dummy "マナ"
scoreboard objectives add RD.mana.max dummy "最大マナ"
scoreboard objectives add RD.mana.regen dummy "マナ回復速度"
scoreboard objectives add RD.mana.timer dummy "マナ回復タイマー"
scoreboard objectives add RD.mana.operation dummy "マナ計算"
scoreboard objectives add RD.mana.bossbar.fadeout dummy "マナ表示フェードアウト"

scoreboard objectives add RD.tick.timer dummy "ティックタイマー"

scoreboard objectives add RD.player.ID dummy "プレイヤーID表"
scoreboard objectives add RD.returnFunction dummy "再帰関数"

scoreboard objectives add ability.right_click dummy "アビリティ：右クリ検知"

scoreboard objectives add item.shortBow.cooldown dummy "ショートボウのクールダウン"
scoreboard objectives add RD.item.RC dummy "右クリックの検知"
scoreboard objectives add RD.item.durabity dummy "耐久値"

scoreboard objectives add abilityCooldown.reverberation dummy "「残響」の魔導書のクールダウン"
scoreboard objectives add RD.custom_block.tmp0 dummy "仮置き"
scoreboard objectives add RD._BOOLEAN dummy "ブーリアン0"

# スコアボード多すぎひん？
scoreboard objectives add RD.custom_block.CALC_0 dummy "演算[0]"
execute unless data storage rockietools:game_progression progress run data modify storage rockietools:game_progression progress set value 0
function system:define_teams

tellraw @a [{"text": "THE ECLIPSE",bold:true},{"text":"\nDatapack made by Crazy Boomers Crew"}]

data merge storage rockietools:uuid {datas:""}
data modify storage rockietools:uuid datas set value {}

execute if data storage rockietools:player {} run data modify storage rockietools:player data set value {}

execute unless data storage rockietools:id {} run data modify storage rockietools:id data set value {}

execute if data storage rockietools:custom_crafter {} run data modify storage rockietools:custom_crafter data set value {}

execute if data storage rockietools:custom_recipe {} run data modify storage rockietools:custom_recipe list set value {}

function rd_recipe:
# function custom_items:custom_block/advanced_crafter/utils/storage/recipes/loop_backward_init

function system:save_progression