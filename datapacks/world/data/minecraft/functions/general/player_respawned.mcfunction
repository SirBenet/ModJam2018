# Player died and respawned
execute as @s at @s run particle minecraft:ambient_entity_effect ~ ~1 ~ 0 0.5 0 1 200

# Respawned player functions for each state
execute if score State Global matches 0 run function lobby/player_start
execute if score State Global matches 1 run function game_battle/player_new
execute if score State Global matches 2 run function game_bolt/player_new
execute if score State Global matches 3 run function game_bounce/player_new