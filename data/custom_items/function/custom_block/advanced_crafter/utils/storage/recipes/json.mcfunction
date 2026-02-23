# ★ レシピのjson構築 ★

# /return run execute if data entity @s SelectedItem.components."minecraft:custom_data".CustomItem

# 全てリセット
data modify storage rockietools:custom_recipe list.crafter set value []
data modify storage rockietools:custom_recipe meta.crafter set value []
data remove storage rockietools:custom_recipe temp_crafter

# ◆項目の解説
#
# allowed_slot: レシピモード時、アイテムを置くことが許可されているスロット
# crafting_slot: クラフトモード時にアイテムを置くことが許可されているスロット
# 
data modify storage rockietools:custom_recipe meta.crafter set value \
{\
    allowed_slot:\
    [\
        {entry:"1"},\
        {entry:"2"},\
        {entry:"3"},\
        {entry:"4"},\
        {entry:"5"},\
        {entry:"6"},\
        {entry:"7"},\
        {entry:"10"},\
        {entry:"11"},\
        {entry:"12"},\
        {entry:"13"},\
        {entry:"14"},\
        {entry:"15"},\
        {entry:"16"},\
        {entry:"17"},\
        {entry:"19"},\
        {entry:"20"},\
        {entry:"21"},\
        {entry:"22"},\
        {entry:"23"},\
        {entry:"24"},\
        {entry:"25"}\
    ],\
    crafting_slot:\
    [\
        {entry:"3"},\
        {entry:"4"},\
        {entry:"5"},\
        {entry:"12"},\
        {entry:"13"},\
        {entry:"14"},\
        {entry:"21"},\
        {entry:"22"},\
        {entry:"23"}\
    ]\
}

# ～以下、レシピ（全項目省略不可）～
# 
# ◆ result
# -> name: アイテム名（デバッグ用）
# -> table: レシピ検索画面、またはクラフト時に参照するアイテムのルートテーブル
# 
# ◆ ingredient　必ず八項目必要、省略不可能
# -> declear: execute文の分岐（if / unless）。ifで「～のとき」、unlessで「～でないとき」になる
# -> modifier: 最重要！レシピで要求するアイテムデータを書き込む。コンポーネントの扱いに注意（イコールでカスタムidを指定するのはおススメしない）
# -> table: レシピモード時に表示される素材のルートテーブル

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Null",\
            table:"recipe:null",\
        },\
    ingredient:\
    [\
        {id:-1},\
        {id:-1},\
        {id:-1},\
        {id:-1},\
        {id:-1},\
        {id:-1},\
        {id:-1},\
        {id:-1},\
        {id:-1}\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Ruby Helmet",\
            table:"recipe:custom_crafter/item.armor/ruby/helmet"\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Ruby Chestplate",\
            table:"recipe:custom_crafter/item.armor/ruby/chestplate"\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Ruby Leggings",\
            table:"recipe:custom_crafter/item.armor/ruby/leggings"\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Ruby Boots",\
            table:"recipe:custom_crafter/item.armor/ruby/boots"\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
        {declear:"unless", modifier:"*",table:"recipe:null"},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"recipe:ingredient/ruby"},\
    ]\
}