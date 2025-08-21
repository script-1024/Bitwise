#? bitwise:xor
#* @usage
#   scoreboard players set #a param <value>
#   scoreboard players set #b param <value>
#   execute store result score ... run function bitwise:xor
#* ---
# RESULT = 0; N = 1
# A = (unsigned)A, B = (unsigned)B
# while (A != 0 or B != 0)
#   if (A % 2 != B % 2)
#       RESULT += N
#   N *= 2; A /= 2; B /= 2
# return RESULT

scoreboard players set #result local 0
scoreboard players set #n local 1
scoreboard players operation #a local = #a param
scoreboard players operation #b local = #b param
function bitwise:private/to_unsigned
function bitwise:private/xor
execute if score #unsigned local matches 1 run scoreboard players operation #result local += #INT_MIN const
scoreboard players reset #unsigned local
scoreboard players reset #t local
scoreboard players reset #a local
scoreboard players reset #b local
scoreboard players reset #n local
return run scoreboard players get #result local