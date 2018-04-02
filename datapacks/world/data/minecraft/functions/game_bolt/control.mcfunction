scoreboard players operation @e[type=xp_orb,tag=HotAirBalloonOrb] ID -= @s ID

# Get hot air balloon's motion
execute store result score CurrentX Workspace run data get entity @e[type=xp_orb,tag=HotAirBalloonOrb,scores={ID=0},limit=1,sort=nearest] Motion[0] 32768
execute store result score CurrentZ Workspace run data get entity @e[type=xp_orb,tag=HotAirBalloonOrb,scores={ID=0},limit=1,sort=nearest] Motion[2] 32768

# Check if colliding with anything
#TODO: execute as @e[type=xp_orb,tag=HotAirBalloonOrb,scores={ID=0},limit=1,sort=nearest] at @s run function game_battle/check_collision
scoreboard players operation @s MotionX = CurrentX Workspace
scoreboard players operation @s MotionZ = CurrentZ Workspace

# Add my input to hot air balloon's motion, store back
execute store result score InputX Workspace run data get entity @s Motion[0] 32768
execute store result score InputZ Workspace run data get entity @s Motion[2] 32768
scoreboard players operation InputX Workspace *= HotAirBalloonSpeed Constants
scoreboard players operation InputZ Workspace *= HotAirBalloonSpeed Constants
scoreboard players operation @s MotionX += InputX Workspace
scoreboard players operation @s MotionZ += InputZ Workspace

execute store result entity @e[type=xp_orb,tag=HotAirBalloonOrb,scores={ID=0},limit=1,sort=nearest] Motion[0] double 0.000030517578125 run scoreboard players get @s MotionX
execute store result entity @e[type=xp_orb,tag=HotAirBalloonOrb,scores={ID=0},limit=1,sort=nearest] Motion[2] double 0.000030517578125 run scoreboard players get @s MotionZ

scoreboard players operation @e[type=xp_orb,tag=HotAirBalloonOrb] ID += @s ID