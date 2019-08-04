! This is a Monte Carlo program to estimate pi. the area_circle/area_square=pi/4
! Therefore pi = 4*area_circle/area_square.
! To estimate, this program creates a series of random points, x & y within the square
! It then stores whether they are within the area of the circle or not. From this pi is found.
PROGRAM monte_carlo_pi
IMPLICIT NONE
REAL :: x,y,rand_num,pi
REAL, PARAMETER :: r=1,ACTUAL_PI=4.D0*DATAN(1.D0)
INTEGER :: num_queries, istat, i, circle_count

num_queries=-1
DO
    WRITE(*,'(a)',ADVANCE='NO')'Enter the number of queries as an integer:  '
    READ(*,*, iostat=istat)num_queries
    IF(num_queries<1 .OR. istat /=0) THEN
        CYCLE
    ELSE
        EXIT
    END IF
END DO

CALL RANDOM_SEED()
circle_count = 0
DO i=0,num_queries,1
    CALL RANDOM_NUMBER(x)
    CALL RANDOM_NUMBER(y)
    !WRITE(*,*)'X = ',x,'Y = ',Y
    IF (SQRT(x**2 + y**2)<1) circle_count = circle_count + 1
END DO

pi = 4*(REAL(circle_count)/num_queries)
!WRITE(*,*)'The amount of points within the circle is: ', circle_count
WRITE(*,*)'The value of pi given ',num_queries,' queries is: ',pi
PRINT*,'This compares to the Fortram 4.D0*DATAN(1.D0) function result: ',ACTUAL_PI
PRINT*,'The absolute error is ', ABS(ACTUAL_PI-pi)




END PROGRAM monte_carlo_pi