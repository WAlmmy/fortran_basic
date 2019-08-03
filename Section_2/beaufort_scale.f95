! PROGRAM TO SORT WIND SPEED USING BEAUFORT SCALE
PROGRAM beaufort_scale
IMPLICIT NONE
REAL :: wind_speed
INTEGER :: integer_wind_speed

WRITE(*,'(a)',ADVANCE='NO')'Enter the wind speed in Knots: '
READ(*,*)wind_speed
integer_wind_speed=NINT(wind_speed)		! Rounds to nearest whole INT
PRINT*

SELECT CASE (integer_wind_speed)
	CASE(0)
		PRINT*,'Force 0; Calm'
	CASE(1:3)
		PRINT*,'Force 1; Light Air'
	CASE(4:6)
		PRINT*,'Force 2; Light Breeze'
	CASE(7:10)
		PRINT*,'Force 3; Gentle Breeze'
	CASE(11:16)
		PRINT*,'Force 4; Moderate Breeze'
	CASE(17:21)
		PRINT*,'Force 5; Fresh Breeze'
	CASE(22:27)
		PRINT*,'Force 6; Strong Breeze'
	CASE(28:33)
		PRINT*,'Force 7; Near Gale'
	CASE(34:40)
		PRINT*,'Force 8; Gale'
	CASE(41:47)
		PRINT*,'Force 9; Strong Gale'
	CASE(48:55)
		PRINT*,'Force 10; Storm'
	CASE(56:63)
		PRINT*,'Force 11; Violent Storm'
	CASE(64:)
		PRINT*,'Force 12; Hurricane'
END SELECT

END PROGRAM