#? bitwise:macro/not
#* @usage
#   execute store result score ... run function bitwise:macro/not { a: <value> }
#* ---
# RESULT = -A
# RESULT -= 1
# return RESULT

data remove storage args "bitwise:macro/not"
$scoreboard players set #result local $(a)
scoreboard players operation #result local *= #-1 const
return run scoreboard players remove #result local 1