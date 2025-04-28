execute store success score #success homes.dummy run forceload add ~ ~
execute if score #success homes.dummy matches 1 run function homes:helper/start_to_mark_dimension
execute unless score #success homes.dummy matches 1 run function homes:helper/check_chunk_fully_loaded