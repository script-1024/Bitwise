#? bitwise:not
#* @usage
#   scoreboard players set #a param <value>
#   execute store result score ... run function bitwise:not
#* ---
# RESULT = -A
# RESULT -= 1
# return RESULT

scoreboard players operation #result local = #a param
scoreboard players operation #result local *= #-1 const
return run scoreboard players remove #result local 1