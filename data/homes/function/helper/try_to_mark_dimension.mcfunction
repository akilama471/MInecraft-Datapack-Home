execute as @e[type=minecraft:item,tag=!homes.notDimensionMarker] unless data entity @s Item.components."minecraft:custom_data".homesData.markDimension run tag @s add homes.notDimensionMarker
scoreboard players set #marked homes.dummy 0
execute as @e[type=minecraft:item,tag=!homes.notDimensionMarker,limit=1] at @s run function homes:helper/mark_dimension
execute if score #marked homes.dummy matches 0 run schedule function homes:helper/try_to_mark_dimension 1t append