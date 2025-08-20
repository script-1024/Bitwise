#? bitwise:left_shift
#* @usage
#   scoreboard players set #a param <value>
#   scoreboard players set #b param <value>
#   execute store result score ... run function bitwise:left_shift
#* ---
# RESULT = A; N = 2
# while (B != 0)
#   if (B % 2 == 1)
#       RESULT *= N
#   N *= N; B /= 2
# return RESULT

scoreboard players operation #result local = #a param
scoreboard players set #n local 2
scoreboard players operation #b local = #b param
function bitwise:private/lsh
scoreboard players reset #b local
scoreboard players reset #n local
return run scoreboard players get #result local