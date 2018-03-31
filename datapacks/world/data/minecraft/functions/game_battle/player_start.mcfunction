# Called on battle start
#TODO: Teleport players to arena
tp @s 0 80 0
clear @s
xp add @s -1000000000 levels

# Create my battle balloon
execute at @s run function game_battle/summon_battle_balloon