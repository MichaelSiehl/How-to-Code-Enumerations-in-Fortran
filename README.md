# How-to-Code-Enumerations-in-Fortran
THIS REPOSITORY SHOWS A SIMPLE WAY TO CODE ENUMERATED TYPES IN FORTRAN

# Overview
In programming, enumerations (enums, enumerated types) are used to make our source code more readable and also to make the use of objects within our coding more safe.
I recently found that many programmers may be unaware about the possibility to code enums in Fortran. (For an example, see this entry in wikipedia: https://en.wikipedia.org/wiki/Enumerated_type#Fortran). The Fortran standard may not specifically mention it, but compilers, and thus the Fortran language, do easily allow to emulate integer-based enumerations since Fortran 95(/90?). The situation has even improved with newer compilers, see the example and explanations below.

# Fortran Enum Example
See the example code in the src folder.

# Explanations
The example's EnumColors_Values type should be PRIVATE with today's compilers (as shown in the example code), but I believe to remember that Fortran 95 compilers earlier on (back in the 1990s) did require this to be PUBLIC.

To make our (integer-based) enum type more safe to use, we choose somewhat more unique integer values for it, like that:
TYPE (EnumColors_Values), PUBLIC, PARAMETER :: EnumColors = EnumColors_Values (157839,230972,387150)

The src folder does also contain the Fortran_2003_enum_example.f90, using Fortran 2003 enum, bind(c). With that, we found it helpful to use the first enumerator to name the enumeration (Colors):
...
public :: Colors, Blue, Red, Green
enum, bind(c)
  enumerator :: Colors = 0
  enumerator :: Blue = 157839
  enumerator :: Red = 230972
  enumerator :: Green = 387150
end enum
...
integer(kind(Colors)) :: MyColor
MyColor = Green
