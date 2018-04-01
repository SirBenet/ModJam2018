# Create for direction signpost
summon spider 2 64 5 {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Leashed:1b,Leash:{X:2,Y:64,Z:5},Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b},{Id:25,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"armor_stand",Tags:["PunchBalloon","PunchBalloonNew","PunchBalloonStand"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"leather_boots",Count:1,tag:{Damage:1,Unbreakable:1b,display:{color:99999}}}],DisabledSlots:2039583}]}

# Pick random colour 0 to 16777215
function general/random_number
scoreboard players operation RandomColour Workspace = Seed Random
scoreboard players operation RandomColour Workspace %= 16777215 Constants
execute if score RandomColour Workspace matches ..0 run scoreboard players operation RandomColour Workspace *= -1 Constants
execute store result entity @e[type=armor_stand,tag=PunchBalloonNew,limit=1] ArmorItems[3].tag.display.color int 1 run scoreboard players get RandomColour Workspace
tag @e[type=armor_stand,tag=PunchBalloonNew] remove PunchBalloonNew



# Create for bounce sign
summon spider -4 85 -37 {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Leashed:1b,Leash:{X:-4,Y:85,Z:-37},Silent:1b,ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b},{Id:25,Duration:2147483647,ShowParticles:0b}],Passengers:[{id:"armor_stand",Tags:["PunchBalloon","PunchBalloonNew","PunchBalloonStand"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"leather_boots",Count:1,tag:{Damage:1,Unbreakable:1b,display:{color:99999}}}],DisabledSlots:2039583}]}

# Pick random colour 0 to 16777215
function general/random_number
scoreboard players operation RandomColour Workspace = Seed Random
scoreboard players operation RandomColour Workspace %= 16777215 Constants
execute if score RandomColour Workspace matches ..0 run scoreboard players operation RandomColour Workspace *= -1 Constants
execute store result entity @e[type=armor_stand,tag=PunchBalloonNew,limit=1] ArmorItems[3].tag.display.color int 1 run scoreboard players get RandomColour Workspace
tag @e[type=armor_stand,tag=PunchBalloonNew] remove PunchBalloonNew


