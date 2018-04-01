# Battle
tp @s[scores={TransportBalloon=1}] 17.41 65.00 1.88 673.01 11.12
# Bounce
tp @s[scores={TransportBalloon=2}] -7.06 86.94 -39.28 282.39 6.09
# Bolt
tp @s[scores={TransportBalloon=3}] -19.63 66.00 11.13 440.99 13.64

# Effects
effect give @s minecraft:levitation 3 253 true
execute at @s run playsound minecraft:entity.horse.breathe master @a ~ ~ ~ 2 0
execute at @s run particle cloud ~ ~ ~ 0.3 0 0.3 0.01 10

# Reset
scoreboard players set @s TransportBalloon 0
scoreboard players enable @s TransportBalloon