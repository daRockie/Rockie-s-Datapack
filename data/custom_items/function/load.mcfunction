scoreboard objectives add sneakTimer minecraft.custom:minecraft.sneak_time "スニークタイマー"
scoreboard objectives add isSuccess dummy "コマンド成功是非"
scoreboard objectives add item_count dummy "アイテム管理"
scoreboard objectives add deathCount deathCount "死亡回数管理"
scoreboard objectives add RD.health dummy {"text":"❤","color":red}
scoreboard objectives setdisplay below_name RD.health
scoreboard objectives add willReplaceItem dummy "アイテム置き換え是非"
scoreboard objectives add RD.recipe_id dummy "レシピID"
scoreboard objectives add RD.flame dummy "燃焼時間"
scoreboard objectives add RD.temp0 dummy "仮置きスコアボード"


scoreboard objectives add RD.item.emerald_calculator dummy "エメラルド計算"
scoreboard objectives add RD.item.emerald dummy "エメラルド数"

scoreboard objectives add RD.max_health dummy "最大体力"
scoreboard objectives add RD.damage_taken minecraft.custom:damage_taken "ダメージ"
scoreboard objectives add RD.damage_dealt minecraft.custom:damage_dealt "与えたダメージ"

scoreboard players set @a RD.damage_taken 0
scoreboard players set @a RD.damage_dealt 0

# めんどい
scoreboard objectives add RD.isCrafting dummy "モード識別"
scoreboard objectives add RD.block.calculator dummy "計算機"
scoreboard objectives add RD.block.calculator.temp1 dummy "仮置き空間1"
scoreboard objectives add RD.block.calculator.temp2 dummy "仮置き空間2"
scoreboard objectives add RD.block.calculator.temp3 dummy "仮置き空間3"
scoreboard objectives add RD.block.slot dummy "スロット管理"

scoreboard objectives add RD.respawned deathCount "リスポーン検知"

#summon villager ~ ~ ~ {Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,Passengers:[{id:villager,}]}]}]}]}]}]}]}]}]}]}]}]}]}]}]}]}]}]}]}]}]}]}]}