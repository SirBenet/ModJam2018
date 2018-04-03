# Called for respawning, relogging and new player
gamemode spectator @s
tp @s -1024 50 1024

# Kill ballon that lost its ID from me relogging, if there is any
tp @e[type=armor_stand,tag=BattleBalloon,scores={ID=0}] ~ -500 ~