! SOLVE THE QUADRATIC EQUATION Ax^2+Bx+C=0
PROGRAM quadratic_equation

IMPLICIT NONE
REAL :: A,B,C,root1,root2,discriminant
PRINT*,'Program to Solve Quadratic Equation Ax^2+Bx+C=0'
PRINT*
WRITE(*,'(a)',ADVANCE='NO')'Enter A:  '
READ(*,*)A
WRITE(*,'(a)',ADVANCE='NO')'Enter B:  '
READ(*,*)B
WRITE(*,'(a)',ADVANCE='NO')'Enter C:  '
READ(*,*)C
PRINT*
discriminant=B**2-4.*A*C

IF(discriminant >=0)THEN		!REAL ROOTS
	root1=(-B+SQRT(discriminant))/(2.*A)
	root2=(-B-SQRT(discriminant))/(2.*A)
	PRINT*,'Root 1 =',root1
	PRINT*,'Root 2 =',root2
	
ELSE
	PRINT*,' Discriminant =',discriminant,&
	'hence no real roots'
END IF


END PROGRAM quadratic_equation