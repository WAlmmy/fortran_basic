PROGRAM baseball
    USE baseball_module
    IMPLICIT NONE
    REAL :: miles_ph,meters_ps,v0, u0, time,angle,x,y
    REAL, PARAMETER :: timestep=0.01
    miles_ph = 100
    angle = DEGREE_TO_RADIAN(12.)
    meters_ps = MILES_PH_TO_METERS_PS(100.)
    v0=VERTICAL_VELOCITY(meters_ps,angle)
    u0=HORIZONTAL_VELOCITY(meters_ps,angle)
    PRINT*,'100miles ph in meters ps ',meters_ps
    PRINT*,'horizontal velocity ',u0
    PRINT*,'vertical velocity',v0
    WRITE(*,100)'TIME','X','Y'
    time = 0
    DO
        x=HORIZONTAL_POS_AT_TIME(u0,time)
        y=VERTICAL_POS_AT_TIME(v0,time)
        WRITE(*,200)time,x,y
        IF (y<0.) EXIT
        time = time + timestep
    END DO
    100 FORMAT(10A)
    200 FORMAT(5F7.3)
END PROGRAM baseball