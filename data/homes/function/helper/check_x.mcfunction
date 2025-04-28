# homes:rotate/check_x.mcfunction
execute store result score #value homes.dummy run data get entity @s Pos[0] 10
execute if score #value homes.dummy = @s homes.x run function homes:helper/check_z