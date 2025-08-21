execute if score #a local = #b local run return 0
scoreboard players operation #t local = #a local
scoreboard players operation #t local += #b local
scoreboard players operation #t local %= #2 const
execute if score #t local matches 1 run scoreboard players operation #result local += #n local
scoreboard players operation #n local *= #2 const
scoreboard players operation #a local /= #2 const
scoreboard players operation #b local /= #2 const
function bitwise:private/xor