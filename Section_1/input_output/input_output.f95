PROGRAM input_output
IMPLICIT NONE
INTEGER :: num_students,num1,num2

PRINT*;PRINT*
PRINT*,'Enter the number of students'
READ*,num_students
PRINT*
PRINT*,'The number of students is: ',num_students
PRINT*,'Press ENTER to close the program'
READ*
! OR
PRINT*;PRINT*
WRITE(*,*)'Enter 2 numbers'
READ(*,*)num1,num2
PRINT*,'number1 =  ',num1,'    number2 = ',num2
PRINT*,'Press ENTER to close the program'
READ(*,*)
END PROGRAM input_output