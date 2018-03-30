# New player
execute if entity @s[tag=!Initiated] run function general/player_new
# Relogged player
execute if entity @s[scores={LeaveGame=1..}] run function general/player_relogged
# Respawned player
execute if entity @s[scores={TimeSinceDeath=1}] run function general/player_respawned
