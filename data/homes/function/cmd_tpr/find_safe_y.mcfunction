# find_safe_y.mcfunction - Finds a safe Y position for teleporting
# First forceload the chunk to avoid crashes
execute at @s run forceload add ~ ~

# Start at current Y level (where spreadplayers put us)
execute store result score @s tpr.y run data get entity @s Pos[1]

# Check if current position is safe
execute at @s if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success

# If current position isn't safe, try to find nearby safe spot
execute if score @s tpr.found matches 0 run function namespace:cmd_tpr/check_nearby

# If still no safe spot, fail
execute if score @s tpr.found matches 0 run function namespace:cmd_tpr/teleport_fail

# Clean up - unload the chunk
execute at @s run forceload remove ~ ~