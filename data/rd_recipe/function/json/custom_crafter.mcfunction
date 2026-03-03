# ★ レシピのjson構築 ★
# 便利だけど超絶処理量が跳ね上がる

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
# 
# **空白の定義文**
# -> {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},
# 
# -> modifier: 最重要！レシピで要求するアイテムデータを書き込む。コンポーネントの扱いに注意（イコールでカスタムidを指定するのはおススメしない）
# -> table: レシピモード時に表示される素材のルートテーブル
# -> count: アイテムの最低要求量

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Null",\
            table:"rd_recipe:null",\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのヘルメット",\
            table:"rd_recipe:custom_crafter/item.armor/ruby/helmet"\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのチェストプレート",\
            table:"rd_recipe:custom_crafter/item.armor/ruby/chestplate"\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのレギンス",\
            table:"rd_recipe:custom_crafter/item.armor/ruby/leggings"\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのブーツ",\
            table:"rd_recipe:custom_crafter/item.armor/ruby/boots"\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーのツルハシ",\
            table:"rd_recipe:custom_crafter/item.tool/ruby/pickaxe"\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"stick", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"stick", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"ルビーの剣",\
            table:"rd_recipe:custom_crafter/item.tool/ruby/sword"\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"red_dye[custom_data~{CustomItem:\"RD.ruby\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"stick", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
    ]\
}


data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"魔導書",\
            table:"rd_recipe:custom_crafter/item.misq/grimoire"\
        },\
    ingredient:\
    [\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"emerald[custom_data~{CustomItem:\"RD.peridot\"}]", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"emerald[custom_data~{CustomItem:\"RD.peridot\"}]", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"if", modifier:"book", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"if", modifier:"emerald[custom_data~{CustomItem:\"RD.peridot\"}]", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
        {declear:"if", modifier:"emerald[custom_data~{CustomItem:\"RD.peridot\"}]", table:"rd_recipe:ingredient/peridot",count:1},\
        {declear:"unless", modifier:"*",table:"rd_recipe:null",count:1},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"鎮魂歌の残響",\
            table:"rd_recipe:custom_crafter/item.misq/scrolls/craftable/reverberation"\
        },\
    ingredient:\
    [\
        {declear:"if", modifier:"echo_shard", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"sculk", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"echo_shard", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"sculk", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"book[custom_data~{CustomItem:\"RD.grimoire\"}]", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"sculk", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"echo_shard", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"sculk", table:"rd_recipe:ingredient/ruby",count:1},\
        {declear:"if", modifier:"echo_shard", table:"rd_recipe:ingredient/ruby",count:1},\
    ]\
}
