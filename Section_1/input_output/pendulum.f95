PROGRAM pendulum
IMPLICIT NONE
REAL, PARAMETER :: PI = 4 * ATAN(1.0_8) ! PI defined to 8sf
REAL :: p,l,g
! This program takes in the gravity and Period of a pendulum. Returns the Length in m

PRINT*;PRINT*
PRINT*,"Enter the value of gravity in ms^-2"
READ*, g
PRINT*,"Enter the Period in Seconds"
READ*, p

l=g*(p/(2*PI))**2

WRITE(*,*)"The Length is:   ", l,"m"
END PROGRAM 