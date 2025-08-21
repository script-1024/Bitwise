execute if score #b local matches 0 run return 0
scoreboard players operation #tempB local = #b local
scoreboard players operation #tempB local %= #2 const
execute if score #tempB local matches 1 run scoreboard players operation #result local /= #n local
scoreboard players operation #n local *= #n local
execute if score #b local matches ..-1 run scoreboard players add #b local 1
scoreboard players operation #b local /= #2 const
scoreboard players reset #tempB local
function bitwise:private/rsh