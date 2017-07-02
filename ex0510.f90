! 浮点数做逻辑运算时，需避免使用“等于”判断
program ex0510
implicit none
  real :: a
  real :: b = 4.0
  real, parameter :: e = 0.0001   ! 设置误差范围

  a=SQRT(b)**2-b ! 理论上a应该要等于0
  
  if ( abs(a-0.0)<=e ) then
	write(*,*) "a等于0"
  else
    write(*,*) "a不等于0"
  end if

  stop
end
