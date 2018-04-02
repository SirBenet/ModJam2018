# Teleport to my pig
scoreboard players operation @e[type=pig,tag=HotAirBalloonPig] ID -= @s ID
execute at @e[type=pig,tag=HotAirBalloonPig,scores={ID=0},limit=1,sort=nearest] run tp @s ~ ~ ~2 180 30
scoreboard players operation @e[type=pig,tag=HotAirBalloonPig] ID += @s ID

# Give title
title @s times 0 5 0
title @s subtitle {"text":"to start playing","color":"aqua"}
title @s title [{"text":"Press ","color":"aqua"},{"keybind":"key.use","bold":"true"}]