!冒号： 在声明的同时给予初值

program ex0429
implicit none
  integer :: a=1
  real pi
  parameter(pi=3.14159) !pi 为常数，可以合并为  real, parameter :: pi=3.14159
  write(*,"(I1)") a
  write(*,"(F4.2)") sin(pi/6)
end
