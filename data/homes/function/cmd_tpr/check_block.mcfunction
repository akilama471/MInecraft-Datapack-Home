
# check_block.mcfunction
# Check if current position is safe (solid block below, air at feet and head)
execute as @s at @s if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ #minecraft:air if block ~ ~1 ~ #minecraft:air run function homes:cmd_tpr/teleport_success


