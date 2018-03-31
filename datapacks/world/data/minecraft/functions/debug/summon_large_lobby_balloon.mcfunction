# Create
summon snowball ~ ~-3 ~ {Tags:["BounceBalloon","BounceBalloonSnowball","BounceBalloonLobby"],NoGravity:1b,Motion:[0.0,0.03,0.0],Passengers:[{id:"armor_stand",Tags:["BounceBalloon","BounceBalloonStand","BounceBalloonLobby","BounceBalloonNew"],Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"leather_boots",Count:1,tag:{Damage:1,Unbreakable:1b,display:{color:99999}}}]}]}

# Pick random colour 0 to 16777215
function general/random_number
scoreboard players operation RandomColour Workspace = Seed Random
scoreboard players operation RandomColour Workspace %= 16777215 Constants
execute if score RandomColour Workspace matches ..0 run scoreboard players operation RandomColour Workspace *= -1 Constants
execute store result entity @e[type=armor_stand,tag=BounceBalloonNew,limit=1] ArmorItems[3].tag.display.color int 1 run scoreboard players get RandomColour Workspace
tag @e[type=armor_stand,tag=BounceBalloonNew] remove BounceBalloonNew