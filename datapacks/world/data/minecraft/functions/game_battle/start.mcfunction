scoreboard players set State Global 1
execute as @a at @s run function game_battle/player_start

scoreboard players reset * Points
scoreboard objectives setdisplay sidebar Points

tellraw @a ["",{"text":"⚈ ","color":"aqua"},{"text":"Battle","bold":true,"color":"aqua"},{"text":" ⚈","color":"aqua"}]
tellraw @a ["",{"text":"Move with ","color":"aqua"},{"keybind":"key.forward"},{"text":", ","color":"aqua"},{"keybind":"key.left"},{"text":", ","color":"aqua"},{"keybind":"key.back"},{"text":", ","color":"aqua"},{"keybind":"key.right"},{"text":", shoot with ","color":"aqua"},{"keybind":"key.use"},{"text":" when your XP bar is full","color":"aqua"}]