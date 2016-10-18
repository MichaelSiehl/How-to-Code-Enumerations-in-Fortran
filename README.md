# How-to-Code-Enumerations-in-Fortran
THIS REPOSITORY SHOWS A SIMPLE WAY TO CODE ENUMERATED TYPES IN FORTRAN

# Overview
I recently found that many programmers may be unaware about the possibility to code enums in Fortran. (For an example, see this entry in wikipedia: https://en.wikipedia.org/wiki/Enumerated_type#Fortran). The Fortran standard may not specifically mention it, but compilers, and thus the Fortran language, do easily allow to emulate integer-based enumerations since Fortran 95(/90?). The situation has even improved with newer compilers, see the example and explanations below.

# Fortran Enum Example
!**********************************************************
MODULE Enumerations
!***  Colors Enumeration:
TYPE, PRIVATE :: EnumColors_Values
  INTEGER :: Blue ! = 157839
  INTEGER :: Red ! = 230972
  INTEGER :: Green ! = 387150
END TYPE EnumColors_Values
!
TYPE (EnumColors_Values), PUBLIC, PARAMETER :: EnumColors = EnumColors_Values (157839,230972,387150)
!***
END MODULE Enumerations
!**********************************************************
PROGRAM Main
USE Enumerations
!
INTEGER :: MyColor = EnumColors % Green
!
IF (MyColor == EnumColors % Green) THEN
 WRITE(*,*) 'MyColor is Green'
END IF
!
END PROGRAM Main
!**********************************************************

# Explanations

The example's EnumColors_Values type should be PRIVATE with today compilers (as shown above), but I believe to remember that Fortran 95 compilers (back in the 1990s) did require this to be PUBLIC.
