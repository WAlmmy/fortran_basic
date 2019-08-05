MODULE baseball_module
    IMPLICIT NONE
    CONTAINS
! *****************************************
    FUNCTION HORIZONTAL_VELOCITY(velocity, angle)
        REAL :: HORIZONTAL_VELOCITY
        REAL, INTENT(IN) :: velocity,angle
        HORIZONTAL_VELOCITY=velocity*COS(angle)
        RETURN
    END FUNCTION HORIZONTAL_VELOCITY
! *****************************************
    FUNCTION VERTICAL_VELOCITY(velocity, angle)
        REAL :: VERTICAL_VELOCITY
        REAL, INTENT(IN) :: velocity,angle
        VERTICAL_VELOCITY=velocity*SIN(angle)
        RETURN
    END FUNCTION VERTICAL_VELOCITY
! *****************************************
    FUNCTION MILES_PH_TO_METERS_PS(vel_mph)
        REAL, PARAMETER :: meters_in_mile = 1609.34
        REAL :: MILES_PH_TO_METERS_PS
        REAL, INTENT(IN) :: vel_mph
        MILES_PH_TO_METERS_PS= meters_in_mile*vel_mph/3600.
        RETURN
    END FUNCTION MILES_PH_TO_METERS_PS
! *****************************************
    FUNCTION VERTICAL_POS_AT_TIME(vert_velocity, time)
        REAL,PARAMETER :: g=9.81
        REAL, INTENT(IN) :: vert_velocity, time
        REAL :: VERTICAL_POS_AT_TIME
        VERTICAL_POS_AT_TIME = vert_velocity*time-0.5*g*time**2
        RETURN
    END FUNCTION VERTICAL_POS_AT_TIME
! *****************************************
    FUNCTION HORIZONTAL_POS_AT_TIME(horiz_velocity, time)
        REAL, INTENT(IN) :: horiz_velocity, time
        REAL :: HORIZONTAL_POS_AT_TIME
        HORIZONTAL_POS_AT_TIME = horiz_velocity * time
        RETURN
    END FUNCTION HORIZONTAL_POS_AT_TIME
! *****************************************
    FUNCTION DEGREE_TO_RADIAN(deg)
        REAL(8), PARAMETER :: PI_8  = 4 * atan (1.0_8) 
        REAL :: DEGREE_TO_RADIAN
        REAL, INTENT(IN) :: deg
        DEGREE_TO_RADIAN=PI_8*deg/180.
        RETURN
    END FUNCTION DEGREE_TO_RADIAN
! *****************************************
END MODULE baseball_module