# Battle
tp @s[scores={TransportBalloon=1}] 32.36 62 14.54 575.26 9.02
# Bounce
tp @s[scores={TransportBalloon=2}] -8.77 85 -37.48 156.10 9.44
# Bolt
tp @s[scores={TransportBalloon=3}] -22.14 66 1.02 187.57 6.08

# Effects
effect give @s minecraft:levitation 3 253 true
execute at @s run playsound minecraft:entity.horse.breathe master @a ~ ~ ~ 2 0
execute at @s run particle cloud ~ ~ ~ 0.3 0 0.3 0.01 10

# Reset
scoreboard players set @s TransportBalloon 0
scoreboard players enable @s TransportBalloon