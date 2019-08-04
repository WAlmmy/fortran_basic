PROGRAM data_prep
    IMPLICIT NONE
    CHARACTER(20) :: filename
    REAL ::a,b,c,d
    INTEGER :: istat
   
    
    
    PRINT*;PRINT*
    WRITE(*,'(a)',ADVANCE='NO')'Please enter filename: '
    
    READ(*,*)filename
    OPEN(UNIT=10,file=filename,ACTION='WRITE',iostat=istat)
    IF (istat/=0) THEN
        WRITE(*,FMT=100,ADVANCE='NO')'Read of file: ', filename,' unsuccesful. Terminating program'
    ELSE
        WRITE(*,FMT=100,ADVANCE='NO')'Read of file: ', filename,' succesful!'
        WRITE(10,100)'  1.     1'
        WRITE(10,100)'2     4.'
    END IF
    
    100 FORMAT(20A)
    200 FORMAT(f5.3)
    CLOSE(10)
END PROGRAM data_prep