!   EXAMPLE SUBROUTINE CALL
!   SOLVE LAPLACE EQUATION
PROGRAM test_subroutine
    IMPLICIT NONE
    INTEGER, PARAMETER :: NX=5,NY=5
    INTEGER :: i,j,max_iter=100
    REAL, DIMENSION(NX,NY) :: phi=0

    phi(1,:)=100.
    phi(:,1)=100.

    CALL LAPLACE(NX,NY,max_iter,phi)

    PRINT*
    DO j=NY,1,-1
        WRITE(*,50)(PHI(i,j),i=1,NX)
    END DO
    50 FORMAT(5F7.1)
END PROGRAM test_subroutine
! ***************************************
SUBROUTINE LAPLACE(n1,n2,max_iter,phi)
    IMPLICIT NONE

    ! NEED TO DECLARE ALL THE SUBROUTINE ARGUMENTS AND
    ! ANY OTHER VARIABLES LOCAL TO THE SUBROUTINE

    ! PART OF ARGUMENT LIST

    INTEGER, INTENT(IN) :: max_iter, n1, n2
    REAL, DIMENSION(n1,n2), INTENT(INOUT) :: phi

    ! LOCAL TO THE SUBROUTINE
    INTEGER :: i,j,iter

    DO iter=1,max_iter
        DO i=2,n1-1
            DO j=2, n2-1
                phi(i,j)=0.25*(phi(i+1,j)+phi(i-1,j) + phi(i,j+1)+phi(i,j-1))
            END DO
        END DO
    END DO

    RETURN
END SUBROUTINE LAPLACE
! ***************************************