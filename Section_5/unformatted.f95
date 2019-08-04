PROGRAM unformatted
IMPLICIT NONE
REAL, DIMENSION(1000,1000) :: a,b
INTEGER :: count_start, count_end, count_rate
REAL :: wall_time
OPEN(UNIT=10,file='formatted_data')
OPEN(UNIT=11,file='unformatted_data',FORM='unformatted')

CALL RANDOM_SEED()
CALL RANDOM_NUMBER(a)
PRINT*

CALL SYSTEM_CLOCK(count_start,count_rate)
WRITE(10,*)a
CALL SYSTEM_CLOCK(count_end)
wall_time=REAL(count_end-count_start)/REAL(count_rate)
PRINT*,'Formatted write wall time=',wall_time

CALL SYSTEM_CLOCK(count_start,count_rate)
WRITE(11)b
CALL SYSTEM_CLOCK(count_end)
wall_time=REAL(count_end-count_start)/REAL(count_rate)
PRINT*,'Unformatted write wall time=',wall_time
PRINT*,

CLOSE(10)
CLOSE(11)

OPEN(UNIT=20,file='formatted_data')
OPEN(UNIT=21,file='unformatted_data',FORM='unformatted')

CALL SYSTEM_CLOCK(count_start,count_rate)
READ(20,*)a
CALL SYSTEM_CLOCK(count_end)
wall_time=REAL(count_end-count_start)/real(count_rate)
PRINT*,'Formatted read wall time=',wall_time

PRINT*
CALL SYSTEM_CLOCK(count_start,count_rate)
READ(21)b
CALL SYSTEM_CLOCK(count_end)
wall_time=REAL(count_end-count_start)/REAL(count_rate)
PRINT*,'Unformatted read wall time=',wall_time

PRINT*,
END PROGRAM unformatted