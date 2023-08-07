# WinDBG Cheat Sheet
This guide is written to help users get started with WinDBG

## Generic WinDBG Commands
|Description | Command |
|--|--|
|Add symbol path|`.sympath+ <path>`|
|Add source code path|`.srcpath+ <path>`
|List loaded modules|`lm`|
|List functions in module |`x <exe name>!*`|
|Run program to be debugged (Go) |`g`|
|Restart program being debugged|`.reload /f`|
|Disassemble current location|`u`|
|Disassemble function at address|`uf <address>`|

## Working with Breakpoints
|Description | Command |
|--|--|
|Set breakpoint | `bp <where>` |
|Set unresolved breakpoint | `bu <where>` |
|List breakpoints | `bl` |
|Delete single breakpoint | `bc <breakpoint#>`|
|Delete all breakpoints | `bc *`|
|Disable breakpoint | `bd <breakpoint#>`|
|Enable breakpoint | `be <breakpoint#>` | 
|Run command when breakpoint is hit|`bp <where> "<command>"; g`|
|Show breakpoint commands | `.bpcmds` |

## Stepping and Navigation
|Description | Command |
|--|--|
|Step instruction (source line), diving into function | `t`|
|Step to next instruction, don't dive into function | `p`|
|Continue normal execution (Go)| `g`|
|Continue until function returns (Go Up)| `gu` |

## Displaying Bytes
|Description | Command|
|--|--|
|Display memory contents at location (f=format) | `df <where>`|
|Display value held in register| `r <reg>`|
|Dereference a pointer at an address| `df dwo <where>` |

### Format
This is not an all-inclusive list. More can be found at [Microsoft's Display Memory documenation](https://learn.microsoft.com/en-us/windows-hardware/drivers/debugger/d--da--db--dc--dd--dd--df--dp--dq--du--dw--dw--dyb--dyd--display-memor)
* a - ASCII
* b - byte values and ASCIII characters
* c - double-word values and ASCII characters
* d - double-word values (4 bytes)
* q - quad-word values (8 bytes)
* u - Unicode characters
* w - word values
* yb - binary values along with byte codes

### Examples
1. Print out 32 words of hex beginning at ESP:  
`dd esp`
2. Dump 16 bytes of binary beginning at ESP - 0xC:  
`dyb esp-0xc L16`
3. Print what is at EAX as a string:  
`da eax`

# Changing Bytes
|Description | Command |
|--|--|
|Set the value of a specific register | `r <reg> = <value>`|
|Set a value at a specific address | `ef <where> <value>` |

## Examples
1. Change the value of EAX to 10 decimal:  
`r eax = 0n10`
2. Change the value of EAX to 15 hex:  
`r eax = 0x15`
3. Assign an integer value 20 to the location 0xffffca40:  
`ed 0n20 0xffffca40`
4. Change a string in memory at 0x56557008 to "hello":  
`ea 0x56557008 "hello"`

## Where
| Description | Format|
|--|--|
|Function name (e.g. main) | `<module>!main`|
|Function + line number (e.g. main+37) | `<module>!main+37`|
|Memory address (e.g. 0x00001234) | `0x00001234`