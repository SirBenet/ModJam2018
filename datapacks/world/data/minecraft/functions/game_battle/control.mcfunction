scoreboard players operation @e[type=armor_stand,tag=BattleBalloon] ID -= @s ID

# Get balloon's motion
execute store result score CurrentX Workspace run data get entity @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] Motion[0] 32768
execute store result score CurrentZ Workspace run data get entity @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] Motion[2] 32768

# Check if colliding with anything
execute as @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] at @s run function game_battle/check_collision
scoreboard players operation NewX Workspace = CurrentX Workspace
scoreboard players operation NewZ Workspace = CurrentZ Workspace

# Add my input to balloon's motion, store back
execute store result score InputX Workspace run data get entity @s Motion[0] 32768
execute store result score InputZ Workspace run data get entity @s Motion[2] 32768
scoreboard players operation InputX Workspace *= BattleBalloonSpeed Constants
scoreboard players operation InputZ Workspace *= BattleBalloonSpeed Constants
scoreboard players operation NewX Workspace += InputX Workspace
scoreboard players operation NewZ Workspace += InputZ Workspace

execute store result entity @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] Motion[0] double 0.000030517578125 run scoreboard players get NewX Workspace
execute store result entity @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] Motion[2] double 0.000030517578125 run scoreboard players get NewZ Workspace

# Store my rotation
execute store result entity @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0]

# Air merge to make smooth
scoreboard players add @s AirCycle 1
execute if entity @s[scores={AirCycle=1}] run data merge entity @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] {Air:0s}
execute if entity @s[scores={AirCycle=2}] run data merge entity @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] {Air:1s}
scoreboard players set @s[scores={AirCycle=2}] AirCycle 0


scoreboard players operation @e[type=armor_stand,tag=BattleBalloon] ID += @s ID