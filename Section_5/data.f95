! Program Flow: 
! 1.    Ask user to enter filename
! 2.    Open file
! 3.    Check file open successful.
! 4.    If unsuccessful, inform user and teminate program
! 5.    If successful read read REAL values into a, and b
! 6.    WRITE under table with heading Time, Temperature
! 7.    Close program
PROGRAM data
IMPLICIT NONE
INTEGER, PARAMETER ::Grid_X=2,Grid_Y=5,List_Length= 100
!REAL DIMENSION:: grid(0:Grid_X,0:Grid_Y),list1(0:List_Length)
REAL :: list1(0:List_Length)
CHARACTER(20) :: filename
REAL ::a,b,c,d
INTEGER :: istat, i


PRINT*;PRINT*
WRITE(*,'(a)',ADVANCE='NO')'Please enter filename: '

READ(*,*)filename
OPEN(UNIT=10,file=filename,ACTION='READ',iostat=istat,status='OLD')
IF (istat/=0) THEN
    WRITE(*,FMT=100,ADVANCE='NO')'Read of file: ', filename,' unsuccesful. Terminating program'
ELSE
    WRITE(*,FMT=100,ADVANCE='NO')'Read of file: ', filename,' succesful!'


    PRINT*;PRINT*
    WRITE(*,FMT=100)'Time','Temperature'
    DO
        READ(10,*,iostat=istat)a,b
        if(a>0 .AND. b>0 .AND. istat==0) THEN
            WRITE(*,FMT=200)a,b
        ELSE
            EXIT
        END IF

    END DO


END IF

100 FORMAT(20A15)
200 FORMAT(2f15.3)

END PROGRAM data