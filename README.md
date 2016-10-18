# How-to-Code-Enumerations-in-Fortran
THIS REPOSITORY SHOWS A SIMPLE WAY TO CODE ENUMERATED TYPES IN FORTRAN

# Overview
I recently found that many programmers may be unaware about the possibility to code enums in Fortran. (For an example, see this entry in wikipedia: https://en.wikipedia.org/wiki/Enumerated_type#Fortran). The Fortran standard may not specifically mention it, but compilers, and thus the Fortran language, do easily allow to emulate integer-based enumerations since Fortran 95(/90?). The situation has even improved with newer compilers, see the example and explanations below.

# Fortran Enum Example
See the example code in the src folder.

# Explanations
The example's EnumColors_Values type should be PRIVATE with todays compilers (as shown in the example code), but I believe to remember that Fortran 95 compilers (back in the 1990s) did require this to be PUBLIC.
