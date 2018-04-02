# Find winner
scoreboard players set MaxPoints Workspace 0
scoreboard players operation MaxPoints Workspace > @a Points
scoreboard players operation @a Points -= MaxPoints Workspace
tellraw @a [{"selector":"@a[scores={Points=0},limit=1]","color":"aqua"}," has won Battle with ", {"score":{"name":"MaxPoints","objective":"Workspace"}}, " points!"]
scoreboard players operation @a Points += MaxPoints Workspace

# Clean up and stop
kill @e[type=!player]
function lobby/start