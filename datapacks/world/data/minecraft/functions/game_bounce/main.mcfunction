execute as @a at @s run function game_bounce/per_player

# Spawn ballons, slower as game progresses
scoreboard players remove BalloonSpawnTimer Global 10
execute if score BalloonSpawnTimer Global matches ..0 run function game_bounce/spawn_random_balloon