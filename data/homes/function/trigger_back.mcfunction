tellraw @a [{"text":"[Datapack]"},{"text":" Back command executed","color":"green"}]

# Check if back location exists
execute if data storage homes:storage players[-1].back.pos run {
  # If yes, teleport back
  execute in minecraft:overworld if data storage homes:storage players[-1].back.dim matches "minecraft:overworld" run tp @s from storage homes:storage players[-1].back.pos facing storage homes:storage players[-1].back.rot
  execute in minecraft:the_nether if data storage homes:storage players[-1].back.dim matches "minecraft:the_nether" run tp @s from storage homes:storage players[-1].back.pos facing storage homes:storage players[-1].back.rot
  execute in minecraft:the_end if data storage homes:storage players[-1].back.dim matches "minecraft:the_end" run tp @s from storage homes:storage players[-1].back.pos facing storage homes:storage players[-1].back.rot

  # Feedback
  tellraw @a {"text":"You returned to your previous location.","color":"green"}
}

# If no saved location, warn the player
execute unless data storage homes:storage players[-1].back.pos run tellraw @a {"text":"No previous location saved.","color":"red"}

# Reset trigger value
scoreboard players set @s back 0
