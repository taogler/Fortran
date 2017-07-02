!传址调用：调用时出去的参数和子程序接收的参数是使用相同的内存地址来记录数据
!传值调用：修改子程序中参数内容，不会影响到调用处的变量内容
program  ex0804
implicit none
  integer :: a = 1
  integer :: b = 2
  call add(a,b)     ! 3  ! 把变量a及b交给子程序add来处理

  write(*,*) a, b   ! 10   20 
  stop
end

subroutine add(first, second)  !传址调用
implicit none
  integer :: first, second ! first,second的内容会从CALL时得到
  write(*,*) first+second

  first=10    !传址调用
  second=20 

  return
end

