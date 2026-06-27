team add RD.type.sorcery [{"text":"魔法"}]
team modify RD.type.sorcery color white
team modify RD.type.sorcery friendlyFire false
team modify RD.type.sorcery prefix [{"text":"🧪【ソーサリー】",color:"gray"}]

team add RD.type.plaer [{"text":"プレイヤー"}]
team modify RD.type.plaer seeFriendlyInvisibles true

team add devs [{"text":"Developer Mode"}]
team modify devs prefix [{"text":"[ Developer Mode ]"}]

team add RD.no_friendly_fire [{"text":"no_friendly_fire"}]
team modify RD.no_friendly_fire collisionRule never
team modify RD.no_friendly_fire friendlyFire false

team add RD.mannequin
team modify RD.mannequin collisionRule never