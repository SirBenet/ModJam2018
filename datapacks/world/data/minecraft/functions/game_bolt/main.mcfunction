execute as @a at @s run function game_bolt/per_player

# Every 3 ticks, teleport HotAirBalloonBaseStand above HotAirBalloonOrb
scoreboard players add HotAirBalloonTeleportTimer Global 1
execute if score HotAirBalloonTeleportTimer Global matches 3 as @e[type=xp_orb,tag=HotAirBalloonOrb] at @s run game_bolt/teleport_hot_air_balloon
execute if score HotAirBalloonTeleportTimer Global matches 3 run scoreboard players set HotAirBalloonTeleportTimer Global 0