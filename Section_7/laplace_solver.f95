! PROGRAM TO CHECK CODE RUN TIME
! USE DIFFERENT OPTIMIZATION SWITCHES
! USE ALLOCATABLE ARRAYS
MODULE VARIABLES
    IMPLICIT NONE
    SAVE
    INTEGER :: nx,ny,iterations
    REAL,ALLOCATABLE,DIMENSION(:,:) :: phi,phiold
END MODULE VARIABLES
! *************************************************
! MAIN PROGRAM
PROGRAM LAPLACE_SOLVER
    USE VARIABLES
    IMPLICIT NONE
    INTEGER :: status, l, i,j,count_start,count_end,count_rate
    REAL :: wall_time

    PRINT*
    WRITE(*,*)'Enter number of iterations: '
    READ(*,*)iterations
    PRINT*
    WRITE(*,*)'Enter the number of cells in one direction: '
    READ(*,*)nx; ny=nx
    ALLOCATE (phi(0:nx+1,0:ny+1),phiold(0:nx+1,0:ny+1),stat=status)
    IF(status /= 0) THEN
        WRITE(*,*)'Error in allocating memory.'
        STOP
    END IF
    ! Initialise variables
    phi=0;  phi(0,:)=100.;  phi(:,0)=100.;   phiold=phi;

    CALL SYSTEM_CLOCK(count_start,count_rate)   !start timing

    DO l=1,iterations
        phi(l:nx,l:ny)=0.25*(phi(2:nx+1,1:ny) + phi(0:nx-1,1:ny) + &
                            phi(1:nx,0:ny-1) + phi(1:nx,2:ny+1))
    END DO

    CALL SYSTEM_CLOCK(count_end)    !end timing
    wall_time=real(count_end-count_start)/REAL(count_rate)
    PRINT*
    PRINT*,'Run time = ',wall_time
    PRINT*
    IF(nx .LE. 5) THEN
        DO j = ny+1, 0, -1
            WRITE(*,100)(phi(i,j), i=0, nx+1)
        END DO
    ELSE
        PRINT*,'(Array too large to write out on screen.)'
    END IF

    100 FORMAT(7F10.2)
    DEALLOCATE(phi,phiold)
END PROGRAM LAPLACE_SOLVER
    