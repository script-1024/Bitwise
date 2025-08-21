execute if score #a local = #b local run return 0
scoreboard players operation #tempA local = #a local
scoreboard players operation #tempB local = #b local
scoreboard players operation #tempA local %= #2 const
scoreboard players operation #tempB local %= #2 const
execute unless score #tempA local = #tempB local run scoreboard players operation #result local += #n local
scoreboard players operation #n local *= #2 const
execute if score #a local matches ..-1 run scoreboard players add #a local 1
scoreboard players operation #a local /= #2 const
execute if score #b local matches ..-1 run scoreboard players add #b local 1
scoreboard players operation #b local /= #2 const
scoreboard players reset #tempA local
scoreboard players reset #tempB local
function bitwise:private/xor