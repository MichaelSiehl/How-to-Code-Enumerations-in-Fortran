https://github.com/MichaelSiehl/How-to-Code-Enumerations-in-Fortran
!**********************************************************
module Enumerations
implicit none
private
!***  Colors Enumeration:
public :: Colors, Blue, Red, Green
enum, bind(c)
  enumerator :: Colors = 0
  enumerator :: Blue = 157839
  enumerator :: Red = 230972
  enumerator :: Green = 387150
end enum
!
end module Enumerations
!**********************************************************
program Main
use Enumerations
implicit none
integer(kind(Colors)) :: MyColor
!
MyColor = Green
!
if (MyColor == Green) then
 write(*,*) 'MyColor is Green'
end if
!
end program Main
!**********************************************************
