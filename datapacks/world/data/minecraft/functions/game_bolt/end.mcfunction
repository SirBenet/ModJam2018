tellraw @a [{"text":"End of race!","color":"aqua"}]

# Clean up and stop
tag @a remove Finished
kill @e[type=!player]
tp @a 0 62 0
function lobby/start