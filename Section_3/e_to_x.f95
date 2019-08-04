!CODE TO COMPUTE e^x=1 + x + x^2/2! +x^3/3! + ...
PROGRAM e_to_x
IMPLICIT NONE
REAL :: x, e_x, next_term
INTEGER :: i, num_terms

PRINT*
WRITE(*,'(a)',ADVANCE='NO')'Enter the value for the exponent of x:  '
Read(*,*)x
WRITE(*,'(a)',ADVANCE='NO')'Enter the number of terms to keep in the series (2 minimum, 50 maximum):  '
READ(*,*)num_terms

IF(num_terms > 50)num_terms=50
IF(num_terms < 2)num_terms=2
e_x=1.0
next_term=x

DO i=2,num_terms,1
    e_x = e_x + next_term
    next_term=next_term*(x/REAL(i))
END DO

PRINT*,'Keeping ',num_terms,' terms, e^',x,'=',e_x
PRINT*,'This compares to the Fortram EXP(X) function result: ',EXP(x)
PRINT*,'The absolute error is ', ABS(EXP(x)-e_x)

END PROGRAM
