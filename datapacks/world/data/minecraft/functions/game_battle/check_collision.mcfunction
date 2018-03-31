# === Bounce off of horizontal/vertical walls (motion in that direction will be 0)
# Sound effect if enough force
execute if score CurrentX Workspace matches 0 unless score CurrentZ Workspace matches 0 unless score NewX Workspace matches -100..100 run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 2 0
execute if score CurrentZ Workspace matches 0 unless score CurrentX Workspace matches 0 unless score NewZ Workspace matches -100..100 run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 2 0
# If current tick's motion is 0, set it to -1 * previous tick's motion 
execute if score CurrentX Workspace matches 0 run scoreboard players operation NewX Workspace *= -1 Constants
execute if score CurrentZ Workspace matches 0 run scoreboard players operation NewZ Workspace *= -1 Constants
execute if score CurrentX Workspace matches 0 run scoreboard players operation CurrentX Workspace = NewX Workspace
execute if score CurrentZ Workspace matches 0 run scoreboard players operation CurrentZ Workspace = NewZ Workspace

# === Bounce off of other balloons
# Collide with balloon, if not still in contact from previous tick
execute at @s if entity @s[tag=!InContact] if entity @e[tag=BattleBalloonStand,distance=0.01..0.7] run function game_battle/collide
# Remove InContact tag if no longer in contact 
execute at @s if entity @s[tag=InContact] unless entity @e[tag=BattleBalloonStand,distance=0.01..0.7] run tag @s remove InContact
# Push out of collider's radius if still in contact
execute at @s if entity @s[tag=InContact] run function game_battle/push_out