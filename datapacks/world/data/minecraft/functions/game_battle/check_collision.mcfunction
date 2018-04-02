# === Bounce off of horizontal/vertical walls (motion in that direction will be 0)
# Sound effect if enough force
execute if score CurrentX Workspace matches 0 unless score CurrentZ Workspace matches 0 unless score @s MotionX matches -100..100 run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 2 0
execute if score CurrentZ Workspace matches 0 unless score CurrentX Workspace matches 0 unless score @s MotionZ matches -100..100 run playsound minecraft:entity.item.pickup master @a ~ ~ ~ 2 0
execute if score CurrentX Workspace matches 0 unless score CurrentZ Workspace matches 0 unless score @s MotionX matches -100..100 run say wall collide 1
execute if score CurrentZ Workspace matches 0 unless score CurrentX Workspace matches 0 unless score @s MotionZ matches -100..100 run say wall collide 2
# If current tick's motion is 0, set it to -1 * previous tick's motion 
execute if score CurrentX Workspace matches 0 run scoreboard players operation @s MotionX *= -1 Constants
execute if score CurrentZ Workspace matches 0 run scoreboard players operation @s MotionZ *= -1 Constants
execute if score CurrentX Workspace matches 0 run scoreboard players operation CurrentX Workspace = @s MotionX
execute if score CurrentZ Workspace matches 0 run scoreboard players operation CurrentZ Workspace = @s MotionZ

# === Bounce off of other balloons
# Collide with balloon, if not still in contact from previous tick
execute at @s if entity @s[tag=!InContact] if entity @e[tag=BattleBalloonStand,distance=0.01..0.7] run function game_battle/collide
# Remove InContact tag if no longer in contact 
execute at @s if entity @s[tag=InContact] unless entity @e[tag=BattleBalloonStand,distance=0.01..0.7] run tag @s remove InContact
# Push out of collider's radius if still in contact
execute at @s if entity @s[tag=InContact] run function game_battle/push_out