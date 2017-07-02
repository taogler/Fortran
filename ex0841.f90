! 通常把一些具有相关功能的函数，独立编写在不同的文件中

program ex0841
  implicit none
  include 'ex0841.inc'  ! 插入ex0841.inc的内容
  a=1
  write(*,*) a
  call sub()
  stop
end 

include 'ex0841s.f90'  ! 在这里插入 ex0841s.f90 这个文件

