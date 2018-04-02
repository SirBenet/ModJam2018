# Summon it
summon armor_stand ~ ~-2 ~ {Tags:["BattleBalloon","BattleBalloonStand","BattleBalloonNew"],Invisible:1b,Pose:{Head:[90f,0f,0f]},ArmorItems:[{},{},{},{id:"leather_boots",Count:1,tag:{Damage:5,Unbreakable:1b,display:{color:99999}}}],Passengers:[{id:"armor_stand",Tags:["Spacer"],Invisible:1b,Passengers:[{Tags:["BattleBalloonHorse"],Silent:1b,Invulnerable:1b,NoAI:1b,id:"horse",Tame:0b}]}],DisabledSlots:2039583}

# Pick random colour 0 to 16777215
function general/random_number
scoreboard players operation RandomColour Workspace = Seed Random
scoreboard players operation RandomColour Workspace %= 16777215 Constants
execute if score RandomColour Workspace matches ..0 run scoreboard players operation RandomColour Workspace *= -1 Constants
execute store result entity @e[type=armor_stand,tag=BattleBalloonNew,limit=1] ArmorItems[3].tag.display.color int 1 run scoreboard players get RandomColour Workspace

# Assign my ID
scoreboard players operation @e[type=armor_stand,tag=BattleBalloonNew,limit=1,sort=nearest] ID = @s ID 

tag @e[type=armor_stand,tag=BattleBalloonNew] remove BattleBalloonNew
