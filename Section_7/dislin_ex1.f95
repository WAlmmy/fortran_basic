! Example of using DISLIN to make line plots
PROGRAM dislin_ex1
    USE DISLIN
    IMPLICIT NONE
    INTEGER,PARAMETER :: NPTS=11
    REAL,PARAMETER :: PI=3.141526
    REAL,DIMENSION(1:NPTS) ::x,y,y1
    INTEGER :: i, ioutput
    CHARACTER(20) :: file_name

    !set up data points
    DO i=1,NPTS
        x(i)=(REAL(i-1)/REAL(NPTS-1))*2.*PI
        y(i)=SIN(x(i))
        y1(i)=COS(x(i))
    END DO

    PRINT*
    PRINT*,'Enter 1 for screen output, 2 for .svg output'
    READ(*,*)ioutput
    PRINT*
    PRINT*,'For screen output, right click mouse button to advance plots'

    IF(ioutput .EQ. 1)THEN
        CALL METAFL('XWIN')
        CALL SCRMOD('REVERS')   !reverse to a black line on white background
        CALL DISINI
        CALL NAME('x (radians)','X')
        CALL NAME('sin(x)','Y')
        CALL QPLOT(x,y,NPTS)
        PRINT*,'right click mouse button to advance plot'
        CALL QPLCRV(x,y,NPTS,'FIRST')
        CALL QPLCRV(x,y1,NPTS,'LAST')

    ELSE IF(ioutput .EQ. 2) THEN
        CALL METAFL('SVG')
        PRINT*,'Enter the 1st output graph file name(w/o extension)'
        READ(*,'(a)')file_name
        CALL SETFIL(TRIM(file_name)//'.svg')
        CALL SCRMOD('REVERS')   !reverse to a black line on white background
        CALL DISINI
        CALL NAME('x (radians)','X')
        CALL NAME('sin(x)','Y')
        CALL QPLOT(x,y,NPTS)
        PRINT*,'Enter the 2nd output graph file name(w/o extension)'
        READ(*,'(a)')file_name
        CALL DISINI
        CALL NAME('x (radians)','X')
        CALL NAME('sin(x)','Y')
        CALL QPLCRV(x,y,NPTS,'FIRST')
        CALL QPLCRV(x,y1,NPTS,'LAST')
    ELSE
        PRINT*,'You did not enter a 1 or 2'
    END IF
END PROGRAM dislin_ex1