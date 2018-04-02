execute as @a at @s run function game_battle/per_player
execute as @e[type=armor_stand,tag=BattleThorn] at @s run function game_battle/thorn

# Timer
scoreboard players remove BattleTimerTicks Global 1
execute if score BattleTimerTicks Global matches ..0 run scoreboard players remove Time#remaining Points 1
execute if score BattleTimerTicks Global matches ..0 run scoreboard players set BattleTimerTicks Global 20
execute if score Time#remaining Points matches ..0 run function game_battle/end