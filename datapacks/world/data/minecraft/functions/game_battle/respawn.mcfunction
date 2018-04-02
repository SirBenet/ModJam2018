scoreboard players operation @e[type=armor_stand,tag=BattleBalloon] ID -= @s ID

tag @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] remove Dead

# Respawn location
spreadplayers -1024 1024 5 40 false @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] at @s run tp @s ~ ~-144 ~

# Pick new colour
replaceitem entity @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] armor.head leather_boots{Damage:5,Unbreakable:1b,display:{color:99999}}
function general/random_number
scoreboard players operation RandomColour Workspace = Seed Random
scoreboard players operation RandomColour Workspace %= 16777215 Constants
execute if score RandomColour Workspace matches ..0 run scoreboard players operation RandomColour Workspace *= -1 Constants
execute store result entity @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] ArmorItems[3].tag.display.color int 1 run scoreboard players get RandomColour Workspace

scoreboard players operation @e[type=armor_stand,tag=BattleBalloon] ID += @s ID