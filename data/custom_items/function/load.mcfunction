scoreboard objectives add sneakTimer minecraft.custom:minecraft.sneak_time "スニークタイマー"
scoreboard objectives add isSuccess dummy "コマンド成功是非"
scoreboard objectives add item_count dummy "アイテム管理"
scoreboard objectives add deathCount deathCount "死亡回数管理"
scoreboard objectives add health dummy "体力"
scoreboard objectives setdisplay below_name health
scoreboard objectives add willReplaceItem dummy "アイテム置き換え是非"
scoreboard objectives add RD.recipe_id dummy "レシピID"
scoreboard objectives add RD.flame dummy "燃焼時間"
scoreboard objectives add RD.temp0 dummy "仮置きスコアボード"

# めんどい
scoreboard objectives add RD.isCrafting dummy "モード識別"
scoreboard objectives add RD.block.calculator dummy "計算機"
scoreboard objectives add RD.block.calculator.temp1 dummy "仮置き空間1"
scoreboard objectives add RD.block.calculator.temp2 dummy "仮置き空間2"
scoreboard objectives add RD.block.wrong_slot dummy "違うアイテム入りスロット"

