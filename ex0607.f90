program  ex0607
implicit none
  real, parameter :: weight=45.0
  real, parameter :: error=0.0001
  real :: guess 

!类似ex0605，该程序至少执行一次 
  do while( .true. )
    write(*,*) "weight:"
    read(*,*) guess
    if ( abs(guess-weight)<error ) exit  
  end do

  write(*,*) "You are right!"

  stop
end
