# Compiler Flags Reference
This documetnation covers some of the common compiler flags used in gcc and MSVCS. Complete documentation can be found here:
* [MSVC compiler options (alphabetical)](https://learn.microsoft.com/en-us/cpp/build/reference/compiler-options-listed-alphabetically?view=msvc-170)
* [MSVC compiler options (categorical)](https://learn.microsoft.com/en-us/cpp/build/reference/compiler-options-listed-by-category?view=msvc-170)
* [gcc compiler options summary](https://gcc.gnu.org/onlinedocs/gcc/Option-Summary.html)

## MSVC
Each of the options are specified with a **/** (e.g. `cl /MD input.c`)
|Option| Description |
|--|--|
|MD|Causes the application to use the multithread-specific and DLL-specific version of the run-timelibrary. Applications compiled with this option are statically linked to MSVCRT.lib. This library provides a layer of code that enables the linker to resolve external references|
|Od|Turns off all optimizations in the program and speeds compilation|
|Zi|The /Zi option produces a separate PDB file that contains all the symbolic debugging information for use with the debugger. The debugging information isn't included in the object files or executable, which makes them much smaller.|
|FA|Creates a listing file|
|Fa|Sets the listing file name|
|Fe|Renames the executable file|
|Fo|Creates an object file|

## gcc
Each of the options are specified with a **-** (e.g. `gcc -g input.c`)
|Option (-)|Description|
|--|--|
|fno-stack-protector|Disable staack protector check|
|g|Default debug information|
|m32|Tells the compiler to generate code for IA-32 architecture|
|m64|Tells the compiler to generate code for IA-32 architecture|
|o|Set the output file name|
|O#|Optimize for code size and execution time|
|w|Disable all warning messages|
|Wno-format|Disable format checking on functions|
|Wno-format-security|Disable warnings about uses of format functions that represent possible security problem|
|z norelr|Disable relocaiton read-only|