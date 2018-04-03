# First-time player, has not logged in before
tag @s add Initiated
team join Default @s
tellraw @s ["",{"text":"⚈ Welcome to ","color":"aqua"},{"text":"BALLOON BASH ","bold":true,"color":"aqua"},{"text":"⚈","color":"aqua"},{"text":"\n"},{"text":"a map by ","color":"gray"},{"text":"SirBenet","color":"white"},{"text":", for Modjam 5","color":"gray"}]
execute as @a at @s run playsound minecraft:entity.puffer_fish.blow_up master @s ~ ~ ~ 20 2
tellraw @s {"translate":"Click this for the resource pack","color":"aqua","clickEvent":{"action":"open_url","value":"http://www.mediafire.com/file/284fmah5a5fdb7d/Balloon%20Bash%20Pack.zip"}}

# ID
scoreboard players add Next ID 1
scoreboard players operation @s ID = Next ID

# New player functions for each state
execute if score State Global matches 0 run function lobby/player_start
execute if score State Global matches 1 run function game_battle/player_new
execute if score State Global matches 2 run function game_bolt/player_new
execute if score State Global matches 3 run function game_bounce/player_new