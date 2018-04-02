scoreboard players set State Global 0
scoreboard objectives setdisplay sidebar

worldborder center 0 0
worldborder set 60000000

kill @e[type=!player]
function debug/reset_lobby_balloons

execute as @a at @s run function lobby/player_start