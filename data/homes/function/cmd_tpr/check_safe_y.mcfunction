
# check_safe_y.mcfunction
# Increment attempts
scoreboard players add @s tpr.attempts 1

# Check current position for safety
execute as @s at @s run function homes:cmd_tpr/check_block

# If we've reached bedrock level or too many attempts, fail
execute if score @s tpr.y matches ..0 run function homes:cmd_tpr/teleport_fail
execute if score @s tpr.attempts matches 400.. run function homes:cmd_tpr/teleport_fail

# Move down one block and continue checking
scoreboard players remove @s tpr.y 1
execute as @s at @s run tp @s ~ ~-1 ~
execute if score @s tpr.y matches 1.. if score @s tpr.attempts matches ..399 run function homes:cmd_tpr/check_safe_y

