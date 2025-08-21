#? bitwise:macro/left_shift
#* @usage
#   execute store result score ... run function bitwise:macro/left_shift { a: <value>, b: <value> }
#* ---
# RESULT = A; N = 2
# while (B > 0)
#   if (B % 2 == 1)
#       RESULT *= N
#   N *= N; B /= 2
# return RESULT

data remove storage args "bitwise:macro/left_shift"
$scoreboard players set #result local $(a)
scoreboard players set #n local 2
$scoreboard players set #b local $(b)
execute if score #b local matches 1.. run function bitwise:private/lsh
scoreboard players reset #t local
scoreboard players reset #b local
scoreboard players reset #n local
return run scoreboard players get #result local