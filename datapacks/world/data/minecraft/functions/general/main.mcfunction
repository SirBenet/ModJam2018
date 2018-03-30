# Main functions for each state
execute if score State Global matches 0 run function lobby/main
execute if score State Global matches 1 run function game_battle/main
execute if score State Global matches 2 run function game_bolt/main
execute if score State Global matches 3 run function game_bounce/main

# Per player stuff
execute as @a at @s run function general/per_player