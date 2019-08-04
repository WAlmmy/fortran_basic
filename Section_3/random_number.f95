! Program to guess random numbers
PROGRAM guess_number
IMPLICIT NONE
REAL :: r
INTEGER :: number, guess, istat
PRINT*
CALL RANDOM_SEED()
CALL RANDOM_NUMBER(r)
number=NINT(r*10.)

!PRINT*,number !statement for debugging
loop:DO
    WRITE(*,'(a)',ADVANCE='NO')'Enter an integer between 0 and 10: '
    READ(*,*,iostat=istat)guess         !Tells us whether READ was successful
    outer_if: IF(istat/=0) THEN !not an integer number
        CYCLE loop
    ELSE    !valid integer number
        IF(guess <0 .OR. guess>10) THEN
            CYCLE loop
        ELSE IF(guess == number) THEN
            PRINT*,'Correct Guess'
            EXIT loop
        ELSE
            PRINT*,'Incorrect Guess, Try Again'
        END IF
    END IF outer_if
END DO loop

END PROGRAM guess_number
    