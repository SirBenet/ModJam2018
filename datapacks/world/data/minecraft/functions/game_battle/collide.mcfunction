# Works out balloon velocities after collision, using this formula:
# https://wikimedia.org/api/rest_v1/media/math/render/svg/14d5feb68844edae9e31c9cb4a2197ee922e409c

playsound minecraft:entity.item.pickup master @a ~ ~ ~ 2 0
tag @s add InContact
#tag @e remove InContact

# Get positions
execute store result score PositionX Workspace run data get entity @s Pos[0] 1024
execute store result score PositionZ Workspace run data get entity @s Pos[2] 1024
execute store result score PositionXOther Workspace run data get entity @e[tag=BattleBalloonStand,distance=0.01..0.7,limit=1] Pos[0] 1024
execute store result score PositionZOther Workspace run data get entity @e[tag=BattleBalloonStand,distance=0.01..0.7,limit=1] Pos[2] 1024
scoreboard players operation PositionDifferenceX Workspace = PositionX Workspace
scoreboard players operation PositionDifferenceZ Workspace = PositionZ Workspace
scoreboard players operation PositionDifferenceX Workspace -= PositionXOther Workspace
scoreboard players operation PositionDifferenceZ Workspace -= PositionZOther Workspace

# Get velocities
execute store result score MotionX Workspace run data get entity @s Motion[0] 1024
execute store result score MotionZ Workspace run data get entity @s Motion[2] 1024
execute store result score MotionXOther Workspace run data get entity @e[tag=BattleBalloonStand,distance=0.01..0.7,limit=1] Motion[0] 1024
execute store result score MotionZOther Workspace run data get entity @e[tag=BattleBalloonStand,distance=0.01..0.7,limit=1] Motion[2] 1024
scoreboard players operation MotionDifferenceX Workspace = MotionX Workspace
scoreboard players operation MotionDifferenceZ Workspace = MotionZ Workspace
scoreboard players operation MotionDifferenceX Workspace -= MotionXOther Workspace
scoreboard players operation MotionDifferenceZ Workspace -= MotionZOther Workspace

# Set up (x1 - x2), to be multiplied by quotient
scoreboard players operation ResultX Workspace = PositionDifferenceX Workspace
scoreboard players operation ResultZ Workspace = PositionDifferenceZ Workspace

# === FRACTION
# Calculate top: <(v1 - v2), (x1 - x2)>
scoreboard players operation NumeratorX Workspace = PositionDifferenceX Workspace
scoreboard players operation NumeratorX Workspace *= MotionDifferenceX Workspace
scoreboard players operation NumeratorZ Workspace = PositionDifferenceZ Workspace
scoreboard players operation NumeratorZ Workspace *= MotionDifferenceZ Workspace
scoreboard players operation Numerator Workspace = NumeratorX Workspace
scoreboard players operation Numerator Workspace += NumeratorZ Workspace
# Calculate bottom: ||(x1 - x2)||^2
scoreboard players operation PositionDifferenceX Workspace *= PositionDifferenceX Workspace
scoreboard players operation PositionDifferenceZ Workspace *= PositionDifferenceZ Workspace
scoreboard players operation Denominator Workspace = PositionDifferenceX Workspace
scoreboard players operation Denominator Workspace += PositionDifferenceZ Workspace
# Perform division. Scale up first for accuracy
scoreboard players operation Numerator Workspace *= 1024 Constants
scoreboard players operation Quotient Workspace = Numerator Workspace
scoreboard players operation Quotient Workspace /= Denominator Workspace

# Multiply (x1 - x2) by quotient. Scale back down
scoreboard players operation ResultX Workspace *= Quotient Workspace
scoreboard players operation ResultX Workspace /= 1024 Constants
scoreboard players operation ResultZ Workspace *= Quotient Workspace
scoreboard players operation ResultZ Workspace /= 1024 Constants

# Take from current motion
scoreboard players operation MotionX Workspace -= ResultX Workspace
scoreboard players operation MotionZ Workspace -= ResultZ Workspace
scoreboard players operation @s TempX = MotionX Workspace
scoreboard players operation @s TempZ = MotionZ Workspace

# Call on other balloon, before we mess with our own motion
execute as @e[tag=BattleBalloonStand,distance=0.01..0.7,limit=1,tag=!InContact] at @s run function game_battle/collide

# Store back
execute store result entity @s Motion[0] double 0.0009765625 run scoreboard players get @s TempX
execute store result entity @s Motion[2] double 0.0009765625 run scoreboard players get @s TempZ
execute store result score CurrentX Workspace run data get entity @s Motion[0] 32768
execute store result score CurrentZ Workspace run data get entity @s Motion[2] 32768