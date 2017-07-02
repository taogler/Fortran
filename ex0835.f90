! module 用来封装程序模块
! 通常把具备相关功能的函数及变量封装在一起

module global
  implicit none
  integer, save :: a   !声明全局变量
end module

program ex0835
  use global
  implicit none
  a = 10
  call sub()
  write(*,*) a
  stop
end

subroutine sub()
  use global
  implicit none
  write(*,*) a
  a = 20
  return
end 
