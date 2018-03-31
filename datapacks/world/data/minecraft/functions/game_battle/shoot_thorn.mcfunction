# Called when player right clicks
playsound item.axe.strip master @a ~ ~ ~ 2 2
xp add @s -1000000000 levels
summon armor_stand ~ ~-4.5 ~ {Tags:["BattleThorn","BattleThornNew"],Invisible:1b,Pose:{Head:[90f,40f,0f]},ArmorItems:[{},{},{},{id:"chorus_fruit_popped",Count:1}],DisabledSlots:2039583}
execute store result entity @e[type=armor_stand,tag=BattleThornNew,sort=nearest,limit=1] Pose.Head[1] float 0.000030517578125 run data get entity @s Rotation[0] 32768

# Give position/rotation of my balloon
scoreboard players operation @e[type=armor_stand,tag=BattleBalloon] ID -= @s ID
execute as @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] at @s run tp @e[type=armor_stand,tag=BattleThornNew,sort=nearest,limit=1] ~ ~ ~ ~ ~
scoreboard players operation @e[type=armor_stand,tag=BattleBalloon] ID += @s ID

# Assign my ID
scoreboard players operation @e[type=armor_stand,tag=BattleThornNew,limit=1,sort=nearest] ID = @s ID 

tag @e[type=armor_stand,tag=BattleThornNew] remove BattleThornNew