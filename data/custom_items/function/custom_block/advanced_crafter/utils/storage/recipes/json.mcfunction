# レシピ追加
# say adding recipes
# ID:-1は、空スロットを示す

# /return run execute if data entity @s SelectedItem.components."minecraft:custom_data".CustomItem

data modify storage rockietools:custom_recipe list.crafter set value []
data modify storage rockietools:custom_recipe meta.crafter set value []
data remove storage rockietools:custom_recipe temp_crafter

# レシピモード時、アイテムを置くことが許可されているスロット
# TODO: execute ifで長さを取る
# entryをcontainer.n に帰る
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
    ]\
}

# 以下、レシピ
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
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:0},\
        {id:0},\
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
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
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
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
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
        {id:0},\
        {id:0},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Wizard Helmet",\
            table:"recipe:custom_crafter/item.armor/ruby/boots"\
        },\
    ingredient:\
    [\
        {id:0},\
        {id:0},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Wizard Chestplate",\
            table:"recipe:custom_crafter/item.armor/ruby/boots"\
        },\
    ingredient:\
    [\
        {id:0},\
        {id:0},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Wizard Leggings",\
            table:"recipe:custom_crafter/item.armor/ruby/boots"\
        },\
    ingredient:\
    [\
        {id:0},\
        {id:0},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
    ]\
}

data modify storage rockietools:custom_recipe list.crafter append value \
{\
    result:\
        {\
            name:"Wizard Boots",\
            table:"recipe:custom_crafter/item.armor/ruby/boots"\
        },\
    ingredient:\
    [\
        {id:0},\
        {id:0},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
        {id:0},\
        {id:"RD.ruby", table:"recipe:ingredient/ruby"},\
    ]\
}