# rpg-engine
# rpg-engine
# Lua Text Based RPG Engine
### Introduction
This engine has a simple "script" language, usable to write scripts and stories!
### Syntax
pretty simple line-by-line sytem.
working like this!
```
jump number
statement
option count
option 1
where to jump
. . .
option n
where to jump
end
```
you may be wondering, what in the world is this mess, and so am I.
basically that jump number is a call, telling the program the location of that prompt.
then is the statement itself, what gets posted.
`statement`
then under that is how many options, in other words, how many differnt choices the player is able to make.
`option count`
then after is the list of options, and where they lead, if anywhere.
```
option 1
where to jump
```
then just end it with an end
`end`
### Example
```
5
you can head north or east
2
north
20
east
16
end
```
5 is the number of the prompt, the actual prompt displayed is... 
`you can head north or east`
and the options are north and east, north leads to prompt 20 and east leads to prompt 16.
then the whole statement is ended with an...
`end`



