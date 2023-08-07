# GDB & GEF Cheat Sheet
This guide is written to help users get started with GDB and the GEF plugin once they are installed.  Another guide that is easy to follow is 
* [Marc Haisenko's GDB cheatsheet](https://darkdust.net/files/GDB%20Cheat%20Sheet.pdf)
* [Generic GDB and GEF Commands](#Generic-GDB-and-GEF-Commands)
* [Working with Breakpoints](#Working-with-Breakpoints)
* [Stepping and Navigation](#Stepping-and-Navigation)
* [Displaying Bytes](#Displaying-Bytes)
    * [Format (f)](#Format-(f))
    * [Unit (u)](#Units-(u))
    * [Examples](#Examples) 
* [Where](#where)

## Generic GDB and GEF Commands
|Description | Command |
|--|--|
|Open an executable for debugging | `gdb <program>` |
|List functions|`info func`|
| Pass arguments to program	| `set args <args>`|
| Run program to be debugged | `run`|
|Disassemble current function| `disassemble`|
|Show GEF registers context|`context reg`|
|Show GEF code context|`context code`|
|Show GEF stack context|`context stack`|
|Show all GEF context (reg, code, stack) | `context all`|
|Restore session saved by GEF | `session restore <file>`

## Working with Breakpoints
|Description | Command |
|--|--|
|Set breakpoint | `console b <where>`  |
|List breakpoints | `i b` |
|Delete single breakpoint | `d <breakpoint#>`|
|Delete all breakpoints | `clear`|
|Disable breakpoint | `disable <breakpoint#>`|
|Enable breakpoint | `enable <breakpoint#>` | 

## Stepping and Navigation
|Description | Command |
|--|--|
|Step instruction (source line), diving into function | `step`|
|Step to next instruction, don't dive into function | `next`|
|Continue normal execution | `continue`|
|Continue until function returns | `finish`

## Displaying Bytes
|Description | Command|
|--|--|
|Display memory contents at location (n=number of units, f=format, u=unit) | `x /nfu <address>`|
|Print value held in register (f=format) | `print /f $<reg>`
### Format (f)
* a - address
* c - char
* d - decimal
* f - floating point
* i - instruction
* o - octal
* s - string
* t - binary
* u - unsigned decimal
* x - hexadecimal

### Unit (u)
* b - byte
* h - half-word or nibble (2 bytes)
* w - word (4 bytes)
* g - giant word (8 bytes)

### Examples
1. Print out 32 words of hex beginning at ESP:  
`x /32xw $esp`
2. Dump 16 bytes of binary beginning at ESP - 0xC:  
`x /16tb $esp-0xC`
3. Print what is at EAX as a string:  
`x /s $eax`

# Changing Bytes
|Description | Command |
|--|--|
|Set the value of a specific register | `set $<register> = <value>`|
|Set a value at a specific address | `set {<type>}<address> = <value>` |

## Examples
1. Change the value of EAX to 10 decimal:  
`set $eax = 10`
2. Change the value of EAX to 15 hex:  
`set $eax = 0x15`
3. Assign an integer value 20 to the location 0xffffca40:  
`set {int}0xffffca40 = 20`
4. Change a string in memory at 0x56557008 to "hello":  
`set {char[6]}0x56557008 = "hello"`

## Where
| Description | Format|
|--|--|
|Function name (e.g. main) | `main`|
|Function + line number (e.g. main+37) | `*main+37`|
|Memory address (e.g. 0x00001234) | `*0x00001234`