# Make player not on horse right click horse
execute if entity @s[nbt=!{RootVehicle:{}}] run function game_battle/not_on_horse
# Otherwise, allow to control horse
execute if entity @s[nbt={RootVehicle:{}},scores={RespawnTimer=..0}] run function game_battle/control

# Keep CoaS in offhand
execute if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run function game_battle/removed_coas
# Check if player right clicked
execute if entity @s[scores={RightClick=1..,RespawnTimer=..0},level=1] run function game_battle/shoot_thorn
scoreboard players set @s[scores={RightClick=1..}] RightClick 0

# Max XP: 742
# Increase when on level 0
xp add @s[level=0] 100 levels
xp add @s[level=100] 25 points
#execute if score Time#remaining Points matches 130.. run xp add @s[level=100] 25 points
#execute if score Time#remaining Points matches 100..129 run xp add @s[level=100] 30 points
#execute if score Time#remaining Points matches 80..99 run xp add @s[level=100] 40 points
#execute if score Time#remaining Points matches 60..79 run xp add @s[level=100] 50 points
#execute if score Time#remaining Points matches ..59 run xp add @s[level=100] 75 points
xp add @s[level=100] -100 levels
# Fill up and stop when overflows to level 101
xp add @s[level=101] 9899 levels
xp add @s[level=10000] 88000 points
xp add @s[level=10000] -9999 levels

# RespawnTimer
scoreboard players remove @s[scores={RespawnTimer=1..}] RespawnTimer 1
execute if entity @s[scores={RespawnTimer=1}] run function game_battle/respawn