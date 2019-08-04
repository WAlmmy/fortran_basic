! COMPUTE TEMPERATURE DISTRIBUTION IN PLATE
PROGRAM temp_distribution
IMPLICIT NONE
INTEGER, PARAMETER :: NX=3,NY=3
INTEGER :: i,j,outeriterations
REAL, DIMENSION(0:NX+1,0:NY+1) :: t

! INITIALIZE TEMPERATURE ARRAY, t
t=0.0
! ADD BOUNDARY CONDITIONS
t(:,0)=100.;t(0,:)=100.

DO outeriterations=1,100
!    DO i=1,NX
!        DO j=1,NY
!            t(i,j)=0.25*(t(i+1,j)+t(i-1,j)+t(i,j+1)+t(i,j-1))
!        END DO
!    END DO
    t(1:NX,1:NY)=0.25*(t(2:NX+1,1:NY)+t(0:NX-1,1:NY)+t(1:NX,2:NY+1)+t(1:NX,0:NY-1))
END DO

PRINT*;PRINT*
DO j=NY+1,0,-1
    WRITE(*,100)(t(i,j),i=0,NX+1)
    PRINT*
END DO
100 FORMAT(20F8.2)

STOP
END PROGRAM temp_distribution