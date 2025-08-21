#? bitwise:macro/xor
#* @usage
#   execute store result score ... run function bitwise:macro/xor { a: <value>, b: <value> }
#* ---
# RESULT = 0; N = 1
# A = (unsigned)A, B = (unsigned)B
# while (A != 0 or B != 0)
#   if (A % 2 != B % 2)
#       RESULT += N
#   N *= 2; A /= 2; B /= 2
# return RESULT

data remove storage args "bitwise:macro/xor"
scoreboard players set #result local 0
scoreboard players set #n local 1
$scoreboard players set #a local $(a)
$scoreboard players set #b local $(b)
function bitwise:private/to_unsigned
function bitwise:private/xor
execute if score #unsigned local matches 1 run scoreboard players operation #result local += #INT_MIN const
scoreboard players reset #unsigned local
scoreboard players reset #t local
scoreboard players reset #a local
scoreboard players reset #b local
scoreboard players reset #n local
return run scoreboard players get #result local