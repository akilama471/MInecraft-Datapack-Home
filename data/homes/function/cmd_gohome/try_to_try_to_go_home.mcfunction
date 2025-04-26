function homes:rotate/players
scoreboard players operation #home homes.dummy = @s homes.target
scoreboard players set #success homes.dummy 0
execute store result score #value homes.dummy run data get entity @s Pos[1] 10
 
# Store current position before teleporting
data modify storage homes:storage players[-1].back.pos set from entity @s Pos
data modify storage homes:storage players[-1].back.dim set from entity @s Dimension
data modify storage homes:storage players[-1].back.rot set from entity @s Rotation

execute if score #value homes.dummy = @s homes.y run function homes:check_x
scoreboard players reset @s homes.x
scoreboard players reset @s homes.y
scoreboard players reset @s homes.z
execute if score #success homes.dummy matches 0 run tellraw @s [{"text":"You must stand still to teleport.","color":"red"}]
execute unless score #success homes.dummy matches 0 run function homes:try_to_go_home
scoreboard players reset @s homes.delay
scoreboard players reset @s homes.target