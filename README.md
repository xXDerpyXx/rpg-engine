# Lua Text Based RPG Engine
### Introduction
This engine has a simple "script" language, usable to write scripts and stories!
### Syntax
pretty simple line-by-line sytem.
working like this!
```
prompt jump number
statement
option 1
where to jump
. . .
option n
where to jump
end
```
you may be wondering, what in the world is this mess, and so am I.

<p>basically that jump number is a call, telling the program the location of that prompt.</p>

then is the statement itself, what gets posted.

`statement`

then after is the list of options, and where they lead, if anywhere.
```
option 1
where to jump
```
then just end it with an end
`end`
### Example
```
prompt 5
you can head north or east
north
20
east
16
end
```
<p>5 is the number of the prompt, the actual prompt displayed is... </p>
`you can head north or east`

<p>and the options are north and east, north leads to prompt 20 and east leads to prompt 16.</p>

<p>then the whole statement is ended with an...</p>

`end`

to end a story at an option you do
`storyend`

### Usage
you may use and distribute this, please leave a link or credit to here, thank you <3



