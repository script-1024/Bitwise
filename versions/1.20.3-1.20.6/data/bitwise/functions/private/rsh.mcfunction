scoreboard players operation #t local = #b local
scoreboard players operation #t local %= #2 const
execute if score #t local matches 1 run scoreboard players operation #result local /= #n local
scoreboard players operation #n local *= #n local
scoreboard players operation #b local /= #2 const
execute if score #b local matches 1.. run function bitwise:private/rsh