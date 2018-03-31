# Give jump boost while holding transport balloon
effect give @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] jump_boost 1 2 true
effect clear @s[nbt=!{SelectedItem:{id:"minecraft:written_book"}}] jump_boost

# Using transport balloon
execute if entity @s[scores={TransportBalloon=1..}] run function lobby/use_transport_balloon

# Check bounce balloons
function general/check_bounce

# Check if falling, play sound and teleport back
execute if entity @s[y=-20,dy=-20] run playsound entity.experience_orb.pickup master @s 0 90 0 20 2
tp @s[y=-20,dy=-20] 0 90 0