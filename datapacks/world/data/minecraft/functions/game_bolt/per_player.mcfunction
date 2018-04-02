# Make player not on horse right click pig
execute if entity @s[nbt=!{RootVehicle:{}}] run function game_bolt/not_on_pig
# Otherwise, allow to control pig
execute if entity @s[nbt={RootVehicle:{}}] run function game_bolt/control

# Check if in win zone
execute if entity @s[tag=!Finished,x=4432,y=47,z=4292,dz=40,dx=20,dy=70] run function game_bolt/player_finish