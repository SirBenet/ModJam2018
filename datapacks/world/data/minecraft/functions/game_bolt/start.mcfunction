scoreboard players set State Global 2

scoreboard players reset * Points
scoreboard objectives setdisplay sidebar Points

tellraw @a ["",{"text":"⚈ ","color":"aqua"},{"text":"Bolt","bold":true,"color":"aqua"},{"text":" ⚈","color":"aqua"}]
tellraw @a ["",{"text":"Move with ","color":"aqua"},{"keybind":"key.forward"},{"text":", ","color":"aqua"},{"keybind":"key.left"},{"text":", ","color":"aqua"},{"keybind":"key.back"},{"text":", ","color":"aqua"},{"keybind":"key.right"},{"text":", reach the end of the track first to win!","color":"aqua"}]

execute as @a at @s run function game_bolt/player_start