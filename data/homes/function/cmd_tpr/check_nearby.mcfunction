# check_nearby.mcfunction - Checks nearby positions for safety
# Try up to 10 blocks up
execute at @s positioned ~ ~1 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~2 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~3 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~4 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~5 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~6 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~7 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~8 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~9 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~10 ~ if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success

# Try up to 10 blocks down (but not below y=0)
execute if score @s tpr.found matches 0 at @s positioned ~ ~-1 ~ if score @s tpr.y matches 2.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~-2 ~ if score @s tpr.y matches 3.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~-3 ~ if score @s tpr.y matches 4.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~-4 ~ if score @s tpr.y matches 5.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~-5 ~ if score @s tpr.y matches 6.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~-6 ~ if score @s tpr.y matches 7.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~-7 ~ if score @s tpr.y matches 8.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~-8 ~ if score @s tpr.y matches 9.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~-9 ~ if score @s tpr.y matches 10.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
execute if score @s tpr.found matches 0 at @s positioned ~ ~-10 ~ if score @s tpr.y matches 11.. if block ~ ~-1 ~ #minecraft:valid_spawn if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run function namespace:cmd_tpr/teleport_success
