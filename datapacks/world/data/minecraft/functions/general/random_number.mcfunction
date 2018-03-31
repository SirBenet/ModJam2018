# Uses an LCG to store a random number into Seed's Random score
# https://en.wikipedia.org/wiki/Linear_congruential_generator
scoreboard players operation Seed Random *= Multiplier Random
scoreboard players operation Seed Random += Increment Random

# Has already been initiated with:
# scoreboard players set Seed Random 731031
# scoreboard players set Multiplier Random 1664525
# scoreboard players set Increment Random 1013904223