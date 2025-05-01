
# Let player know teleport is in progress
title @s actionbar {"text":"Finding a safe location...","color":"yellow"}

# Store current position as fallback
execute store result score @s tpr.x run data get entity @s Pos[0]
execute store result score @s tpr.y run data get entity @s Pos[1]
execute store result score @s tpr.z run data get entity @s Pos[2]

# Randomize x,z coordinates within -1000 to 1000 range
# Use spreadplayers at world spawn to safely find surface coordinates
spreadplayers 0 0 100 1000 false @s

# Mark that no safe spot has been found yet
scoreboard players set @s tpr.found 0

# Get new random x,z position
execute store result score @s tpr.x run data get entity @s Pos[0]
execute store result score @s tpr.z run data get entity @s Pos[2]

# Start teleport process - detect y level
function namespace:cmd_tpr/find_safe_y

scoreboard players set @s tpr 0