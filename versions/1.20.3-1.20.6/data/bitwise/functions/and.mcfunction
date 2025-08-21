#? bitwise:and
#* @usage
#   scoreboard players set #a param <value>
#   scoreboard players set #b param <value>
#   execute store result score ... run function bitwise:and
#* ---
# RESULT = 0; N = 1
# while (A != 0 and B != 0)
#   if (A % 2 and B % 2)
#       RESULT += N
#   N *= 2; A /= 2; B /= 2
# return RESULT

scoreboard players set #result local 0
scoreboard players set #n local 1
scoreboard players operation #a local = #a param
scoreboard players operation #b local = #b param
function bitwise:private/and
scoreboard players reset #a local
scoreboard players reset #b local
scoreboard players reset #n local
return run scoreboard players get #result local