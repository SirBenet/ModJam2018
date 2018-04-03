execute as @a[gamemode=!spectator] at @s run function game_bounce/per_player

# Spawn balloons, slower as game progresses
scoreboard players remove BalloonSpawnTimer Global 10
execute if score BalloonSpawnTimer Global matches ..0 run function game_bounce/spawn_random_balloon

# Win check
execute store result score NumPlayers Workspace if entity @a[gamemode=!spectator]
execute if score NumPlayers Workspace matches 0 run function game_bounce/end