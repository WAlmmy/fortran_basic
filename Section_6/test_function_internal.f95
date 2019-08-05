PROGRAM test_function_internal
    IMPLICIT NONE
    REAL :: degrees_C, degrees_F
    INTEGER :: i,year=1900
    PRINT*
    DO i=0,100,10
        degrees_C=REAL(i)
        degrees_F=CONVERT_C_TO_F(degrees_C)
        WRITE(*,'(F6.0,3X,F6.0)')degrees_C,degrees_F
        PRINT*
    END DO
    !*******************************************************
    CONTAINS
!        INTERNAL FUNCTION
        FUNCTION CONVERT_C_TO_F(degrees_C)
            REAL :: CONVERT_C_TO_F
            REAL,INTENT(IN) :: degrees_C
!            T(deg_F) = T(deg_C) * 1.8 + 32
            CONVERT_C_TO_F = degrees_C*1.8 + 32.0
            RETURN
        END FUNCTION CONVERT_C_TO_F
    !*******************************************************
END PROGRAM test_function_internal
