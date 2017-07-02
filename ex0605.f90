program ex0605
implicit none
  real, parameter :: weight=45.0
  real, parameter :: e = 0.001
  real :: guess = 0.0

! do while 循环，
  do while( abs(guess-weight) > e ) !可以看成 do while(guess/=weight),但最好不要直接判断两个浮点数是否相等
    write(*,*) "Weight:"
    read(*,*) guess
  end do
  
  write(*,*) "You're right"

  stop
end
