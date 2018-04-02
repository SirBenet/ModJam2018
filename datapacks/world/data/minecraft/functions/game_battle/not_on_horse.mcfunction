# Teleport to my horse, facing downwards
scoreboard players operation @e[type=armor_stand,tag=BattleBalloon] ID -= @s ID
execute at @e[type=armor_stand,tag=BattleBalloon,scores={ID=0},limit=1,sort=nearest] run tp @s ~ ~5 ~ ~ 90
scoreboard players operation @e[type=armor_stand,tag=BattleBalloon] ID += @s ID

# Give title
title @s times 0 5 0
title @s subtitle {"text":"to start playing","color":"aqua"}
title @s title [{"text":"Press ","color":"aqua"},{"keybind":"key.use","bold":"true"}]

# Reset motion
effect give @s minecraft:levitation 1 255 true
execute at @s run tp @s @s