# Give jump boost while holding transport balloon
effect give @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] jump_boost 1 2 true
effect clear @s[nbt=!{SelectedItem:{id:"minecraft:written_book"}}] jump_boost

# Using transport balloon
execute if entity @s[scores={TransportBalloon=1..}] run function lobby/use_transport_balloon