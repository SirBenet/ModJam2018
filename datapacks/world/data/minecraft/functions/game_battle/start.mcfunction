scoreboard players set State Global 1
execute as @a at @s run function game_battle/player_start

scoreboard players reset * Points
scoreboard objectives setdisplay sidebar Points

scoreboard players set Time#remaining Points 180
scoreboard players set BattleTimerTicks Global 20

tellraw @a ["",{"text":"⚈ ","color":"aqua"},{"text":"Battle","bold":true,"color":"aqua"},{"text":" ⚈","color":"aqua"}]
tellraw @a ["",{"text":"Move with ","color":"aqua"},{"keybind":"key.forward"},{"text":", ","color":"aqua"},{"keybind":"key.left"},{"text":", ","color":"aqua"},{"keybind":"key.back"},{"text":", ","color":"aqua"},{"keybind":"key.right"},{"text":", shoot with ","color":"aqua"},{"keybind":"key.use"},{"text":" when your XP bar is full. Highest score at the end of 3 minutes wins!","color":"aqua"}]

spreadplayers -1024 1024 5 40 false @a
execute as @a at @s run function game_battle/player_start 