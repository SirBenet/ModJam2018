# Make player not on horse right click horse
execute if entity @s[nbt=!{RootVehicle:{}}] run function game_battle/not_on_horse
# Otherwise, allow to control horse
execute if entity @s[nbt={RootVehicle:{}}] run function game_battle/control

# Keep CoaS in offhand
execute if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run function game_battle/removed_coas
# Check if player right clicked
execute if entity @s[scores={RightClick=1..},level=1] run function game_battle/shoot_thorn
scoreboard players set @s[scores={RightClick=1..}] RightClick 0

# Max XP: 742
# Increase when on level 0
xp add @s[level=0] 100 levels
xp add @s[level=100] 25 points
xp add @s[level=100] -100 levels
# Stop when on level 100
xp add @s[level=101] 9899 levels
xp add @s[level=10000] 88000 points
xp add @s[level=10000] -9999 levels