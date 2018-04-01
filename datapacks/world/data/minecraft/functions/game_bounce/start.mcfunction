scoreboard players set State Global 3

tellraw @a ["",{"text":"⚈ ","color":"aqua"},{"text":"Bounce","bold":true,"color":"aqua"},{"text":" ⚈","color":"aqua"}]
tellraw @a ["",{"text":"Stay up by bouncing on the rising balloons, last person alive wins!","color":"aqua"}]

spreadplayers 1024 1024 1 50 false @a
execute as @a at @s run function game_bounce/player_start 