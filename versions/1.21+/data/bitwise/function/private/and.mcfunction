execute if score #a local matches 0 run return 0
execute if score #b local matches 0 run return 0
scoreboard players operation #tempA local = #a local
scoreboard players operation #tempB local = #b local
scoreboard players operation #tempA local %= #2 const
scoreboard players operation #tempB local %= #2 const
execute if score #tempA local matches 1 if score #tempB local matches 1 run scoreboard players operation #result local += #n local
scoreboard players operation #n local *= #2 const
scoreboard players operation #a local /= #2 const
scoreboard players operation #b local /= #2 const
scoreboard players reset #tempA local
scoreboard players reset #tempB local
function bitwise:private/and