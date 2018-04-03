execute as @a[gamemode=!spectator] at @s run function game_bolt/per_player

# Timer
scoreboard players add BoltTimerCentis Global 5
execute if score BoltTimerCentis Global matches 100.. run scoreboard players add BoltTimerSeconds Global 1
execute if score BoltTimerCentis Global matches 100.. run scoreboard players set BoltTimerCentis Global 0

# Every 3 ticks, teleport HotAirBalloonBaseStand above HotAirBalloonOrb
scoreboard players add HotAirBalloonTeleportTimer Global 1
execute if score HotAirBalloonTeleportTimer Global matches 3 as @e[type=xp_orb,tag=HotAirBalloonOrb] at @s run function game_bolt/teleport_hot_air_balloon
execute if score HotAirBalloonTeleportTimer Global matches 3 run scoreboard players set HotAirBalloonTeleportTimer Global 0

# End game if no players not finished
execute store result score NumPlayers Workspace if entity @a[gamemode=!spectator,tag=!Finished]
execute if score NumPlayers Workspace matches 0 run function game_bolt/end