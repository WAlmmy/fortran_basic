PROGRAM assignment1
IMPLICIT NONE

INTEGER, PARAMETER :: max_humidity=85, min_temperature=10,max_temperature=30,max_wind_speed=3
REAL :: humidity, temperature, wind_speed

PRINT*;PRINT*
WRITE(*,'(a)',ADVANCE='NO')'Enter the humidity in %:  '
READ(*,*)humidity
WRITE(*,'(a)',ADVANCE='NO')'Enter the temperature in deg C:  '
READ(*,*)temperature
WRITE(*,'(a)',ADVANCE='NO')'Enter the wind speed in m/s:  '
READ(*,*)wind_speed

IF (humidity<max_humidity .AND. temperature>min_temperature .AND. temperature<max_temperature .AND. wind_speed<max_wind_speed) THEN
    PRINT*,"Conditions met. Spray away"
ELSE
    PRINT*,"Conditions not met. Do not spray"
END IF

END PROGRAM assignment1