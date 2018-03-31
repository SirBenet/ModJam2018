# Get positions
execute store result score PositionX Workspace run data get entity @s Pos[0] 1024
execute store result score PositionZ Workspace run data get entity @s Pos[2] 1024
execute store result score PositionXOther Workspace run data get entity @e[tag=BattleBalloonStand,distance=0.01..0.7,limit=1] Pos[0] 1024
execute store result score PositionZOther Workspace run data get entity @e[tag=BattleBalloonStand,distance=0.01..0.7,limit=1] Pos[2] 1024
scoreboard players operation PositionDifferenceX Workspace = PositionX Workspace
scoreboard players operation PositionDifferenceZ Workspace = PositionZ Workspace
scoreboard players operation PositionDifferenceX Workspace -= PositionXOther Workspace
scoreboard players operation PositionDifferenceZ Workspace -= PositionZOther Workspace

# Add to my motion
execute store result score MotionX Workspace run data get entity @s Motion[0] 4096
execute store result score MotionZ Workspace run data get entity @s Motion[2] 4096
scoreboard players operation MotionX Workspace += PositionDifferenceX Workspace 
scoreboard players operation MotionZ Workspace += PositionDifferenceZ Workspace 
execute store result entity @s Motion[0] double 0.000244140625 run scoreboard players get MotionX Workspace
execute store result entity @s Motion[2] double 0.000244140625 run scoreboard players get MotionZ Workspace
execute store result score CurrentX Workspace run data get entity @s Motion[0] 32768
execute store result score CurrentZ Workspace run data get entity @s Motion[2] 32768