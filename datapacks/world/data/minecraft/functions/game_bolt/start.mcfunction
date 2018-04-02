scoreboard players set State Global 2

scoreboard players reset * Points
scoreboard objectives setdisplay sidebar Points

tellraw @a ["",{"text":"⚈ ","color":"aqua"},{"text":"Bolt","bold":true,"color":"aqua"},{"text":" ⚈","color":"aqua"}]
tellraw @a ["",{"text":"Move with ","color":"aqua"},{"keybind":"key.forward"},{"text":", ","color":"aqua"},{"keybind":"key.left"},{"text":", ","color":"aqua"},{"keybind":"key.back"},{"text":", ","color":"aqua"},{"keybind":"key.right"},{"text":", reach the end of the river first to win!","color":"aqua"}]

spreadplayers 4007.0 4520.0 3 40 false @a

scoreboard players set BoltTimerCentis Global 0
scoreboard players set BoltTimerSeconds Global 0

execute as @a at @s run function game_bolt/player_start