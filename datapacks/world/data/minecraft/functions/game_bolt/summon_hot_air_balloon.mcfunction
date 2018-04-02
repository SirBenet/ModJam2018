summon phantom ~ ~ ~ {Invulnerable:1b,NoAI:1b,Silent:1b,Passengers:[{id:"pig",Saddle:1b,NoAI:1b,Silent:1b,Invulnerable:1b,Tags:["HotAirBalloonPig","HotAirBalloonNew"]},{id:"armor_stand",Tags:["HotAirBalloon","HotAirBalloonNew"],Invisible:1b,HandItems:[{id:"leather_boots",Count:1,tag:{Damage:4,Unbreakable:1b}},{}],DisabledSlots:2039583,Pose:{RightArm:[0f,0f,0f]},Passengers:[{id:"armor_stand",Tags:["Spacer"],Passengers:[{id:"armor_stand",Tags:["Spacer"],Passengers:[{id:"armor_stand",Tags:["Spacer"],Invisible:1b,Passengers:[{id:"armor_stand",Passengers:[{id:"armor_stand",Tags:["HotAirBalloon","HotAirBalloonNew"],Invisible:1b,HandItems:[{id:"leather_boots",Count:1,tag:{Damage:3,Unbreakable:1b}},{}],Pose:{RightArm:[0f,0f,0f]},DisabledSlots:2039583}]}]}]}]}]}]}

# Pick random colour 0 to 16777215
function general/random_number
scoreboard players operation RandomColour Workspace = Seed Random
scoreboard players operation RandomColour Workspace %= 16777215 Constants
execute if score RandomColour Workspace matches ..0 run scoreboard players operation RandomColour Workspace *= -1 Constants
execute as @e[type=armor_stand,tag=HotAirBalloonNew] store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get RandomColour Workspace

# Assign my ID
scoreboard players operation @e[tag=HotAirBalloonNew] ID = @s ID 

tag @e[type=armor_stand,tag=HotAirBalloonNew] remove HotAirBalloonNew
