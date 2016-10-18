https://github.com/MichaelSiehl/How-to-Code-Enumerations-in-Fortran

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
!
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
